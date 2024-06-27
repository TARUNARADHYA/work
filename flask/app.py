from flask import Flask, render_template, request, jsonify
import numpy as np
from skimage.transform import resize
from tensorflow.keras.models import load_model
import imageio as iio

app = Flask(__name__)

model = load_model("fishModel10(1).h5")

classification = ['Fish Detected, Common Name: Arowana, Scientific name: Osteoglossinae , Class: Actinopterygii, Domain: Eukaryota, Family: Osteoglossidae, Kingdom: Animalia, Order: Osteoglossiformes',
 'Fish Detected, Common Name: Black Sea Sprat, Scientific name: Clupeonella cultriventris,Family: Ehiravidae, Higher classification: Clupeonella',
 'Fish Detected, Common Name: Blue Tang, Scientific Name: Paracanthurus hepatus,Lifespan: 8 – 20 years, Class: Actinopterygi,Domain: Eukaryota,Family: Acanthuridae,Genus: Paracanthurus; Bleeker, 1863,Kingdom: Animalia ',
 'Fish Detected, Common Name: Butterfly Fish, Scientific Name: Chaetodontidae,Class: Actinopterygii,Order: Perciformes,Domain: Eukaryota,Kingdom: Animalia,Phylum: Chordata',
 'Fish Detected, Common Name: Chital Fish, Scientific Name: Chitala chitala,Class: Actinopterygii,Order: Osteoglossiformes,Conservation status: Near Threatened (Population decreasing) Encyclopedia of Life,Family: Notopteridae,Kingdom: Animalia',
 'Fish Detected, Common Name: Clown Fish, Scientific Name: mphiprioninae,Clade: Percomorpha,Class: Actinopterygii,Domain: Eukaryota,Family: Pomacentridae,Kingdom: Animalia',
 'Fish Detected, Common Name: Discus Fish, Scientific Name: Symphysodon,Class: Actinopterygii,Domain: Eukaryota,Family: Cichlidae,Genus: Symphysodon; Heckel, 1840,Kingdom: Animalia',
 'Fish Detected, Fish Detected but unable to recognize fish species or model not been trained for this  particular species',
 'Fish Detected, Common Name: Four Finger ThreadFin, Scientific Name: Eleutheronema tetradactylum,Family: Polynemidae,Genus: Eleutheronema,Kingdom: Animalia,Order: Perciformes',
 'Fish Detected, Common Name: Freshwater Eel, Scientific Name: Anguillidae,Class: Actinopterygii,Family: Anguillidae; Rafinesque, 1810,Genus: Anguilla; Garsault, 1764,Kingdom: Animalia,Order: Anguilliformes',
 'Fish Detected, Common Name: Gilt-Head Bream, Scientific Name: Sparus aurata,Mass: 9.5 kg ,Class: Actinopterygii,Family: Sparidae,Genus: Sparus,Kingdom: Animalia,Order: Spariformes',
 'Fish Detected, Common Name: Glass Perchlet, Scientific Name: Chanda nama,Genus: Chanda; F. Hamilton, 1822,Family: Ambassidae,Kingdom: Animalia',
 'Fish Detected, Common Name: Goby, Scientific Name: Gobiidae,Class: Actinopterygii,Family: Gobiidae; G. Cuvier, 1816,Kingdom: Animalia,Order: Gobiiformes,Phylum: Chordata',
 'Fish Detected, Common Name: GoldFish, Scientific Name: Carassius auratus,Class: Actinopterygii,Domain: Eukaryota,Family: Cyprinidae,Genus: Carassius,Kingdom: Animalia',
 'Fish Detected, Common Name: Grass Carp, Scientific Name: Ctenopharyngodon idella,Mass: 25 kg (Adult) ,Class: Actinopterygii,Genus: Ctenopharyngodon; Steindachner, 1866,Domain: Eukaryota,Family: Cyprinidae,Kingdom: Animalia',
 'Fish Detected, Common Name: Green Spotted Puffer, Scientific Name: Dichotomyctere nigroviridis,Class: Actinopterygii,Domain: Eukaryota,Family: Tetraodontidae,Genus: Dichotomyctere,Kingdom: Animalia,Order: Tetraodontiformes',
 'Fish Detected, Common Name: Hourse Mackerel, Scientific Name: Trachurus trachurus, Class: Actinopterygii, Family: Carangidae',
 'Fish Detected, Common Name: Janitor Fish, Scientific Name: Pterygoplichthys, Family: Loricariidae, Class: Actinopterygii ,Domain: Eukaryota ,Genus: Pterygoplichthys; T. N. Gill, 1858 ,Order: Siluriformes',
 'Fish Detected, Common Name: Moon Fish, Scientific Name: Lampris ,Family: Lampridae; Class: Actinopterygii ,Domain: Eukaryota ,Genus: Lampris; Retzius, 1799 ,Kingdom: Animalia ,Order: Lampriformes',
 'Fish Detected, Common Name: Mosquito Fish, Scientific Name:Gambusia affinis, Class: Actinopterygii, Domain: Eukaryota , Family: Poeciliidae, Genus: Gambusia, Kingdom: Animalia',
 'Fish Detected, Common Name: Needle Fish, Scientific Name: Lepisosteidae,Clade: Ginglymodi,Class: Actinopterygii,Domain: Eukaryota,Family: Lepisosteidae; G. Cuvier, 1825,Kingdom: Animalia',                 
 'No Fish detected in an image',
 'Fish Detected, Common Name: Perch, Scientific name: Perca',
 'Fish Detected, Common Name: Red Mullet, Scientific Name: Mullus surmuletus , Mass: 550 g (Adult) ,Family: Mullidae ,Class: Actinopterygii ,Genus: Mullus ,Domain: Eukaryota ,Kingdom: Animalia',
 'Fish Detected, Common Name: Sea Bass, Scientific Name: Dicentrarchus labrax , Class: Actinopterygii ,Domain: Eukaryota ,Family: Moronidae ,Genus: Dicentrarchus ,Kingdom: Animalia ,Order: Moroniformes',
 'Fish Detected, Common Name: Shark, Scientific Name: Selachimorpha , Speed: 19 km/h (Maximum, In The Water, Attacking) ,Clade: Neoselachii ,Class: Chondrichthyes ,Domain: Eukaryota ,Kingdom: Animalia',
 'Fish Detected, Common Name: Star Fish, Scientific Name: Asteroidea , Phylum: Echinodermata ,Class: Asteroidea; Blainville, 1830 ,Domain: Eukaryota ,Kingdom: Animalia ,Subphylum: Asterozoa',
 'Fish Detected, Common Name: Sword Fish, Scientific Name: Xiphias gladius',
 'Fish Detected, Common Name: Tilapia, Scientific Name: Oreochromis niloticus , Mass: 2.4 kg (Adult) Encyclopedia of Life ,Class: Actinopterygii ,Domain: Eukaryota ,Family: Cichlidae ,Genus: Oreochromis ,Kingdom: Animalia',
 'Fish Detected, Common Name: Trout, Scientific Name: Oncorhynchus mykiss']

@app.route('/')
def home():
    return render_template('index.html')




@app.route('/registration', methods=['GET', 'POST'])
def registration():
    if request.method == 'POST':
        # Handle the registration logic here
        # Example: Save user data to database
        return 'Registration Successful'
    else:
        return render_template('registration.html')
    
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # Handle the registration logic here
        # Example: Save user data to database
        return 'Login Successful'
    else:
        return render_template('login.html')


@app.route('/main')
def main():
    return render_template('main.html')


@app.route('/predict', methods=['POST'])
def predict():
    # Get uploaded image file
    uploaded_file = request.files['file']
    
    # Read the uploaded image
    img = iio.imread(uploaded_file)
    
    # Resize the image
    resized_image = resize(img, (224, 224, 3))
    
    # Make prediction using the model
    pred = model.predict(np.array([resized_image]))
    arr = pred[0]
    class_index = np.argmax(arr)
    predicted_class = classification[class_index]
    
    # Return the predicted class as JSON response
    return jsonify({'prediction': predicted_class})


if __name__ == '__main__':
    app.run(debug=True)
