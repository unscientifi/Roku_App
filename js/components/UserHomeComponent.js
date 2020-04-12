export default {
    props: ['currentuser'],

    template: `
  

    <div class="container">

    <div class="row">
    <div v-for="media in mediaTypes" :data-type="media.alt" @click="loadMedia(null, media.alt)" class="genre-heading col-2 center"><hr>
        <h1>
          &nbsp &nbsp  <img :src="'images/' + media.icon" :alt="media.name" :width="70">
        </h1>
        <h2>&nbsp {{ media.name }}&nbsp &nbsp</h2><hr>
    </div>
    </div>

   

    
                    <ul class="media-genres" v-if="activeMediaType == 'video'" >
                        <li>
                            <a href="1950" @click.prevent="loadMedia('1950', 'video')">1950</a>
                        </li>
                        <li>
                            <a href="1960" @click.prevent="loadMedia('1960', 'video')">1960</a>
                        </li>
                        <li>
                            <a href="1970" @click.prevent="loadMedia('1970', 'video')">1970</a>
                        </li>
                        <li>
                            <a href="1980" @click.prevent="loadMedia('1980', 'video')">1980</a>
                        </li>
                        <li>
                            <a href="1990" @click.prevent="loadMedia('1990', 'video')">1990</a>
                        </li>
                        <li>
                            <a href="all" @click.prevent="loadMedia(null, null)">All</a>
                        </li>
                    </ul>
                    <ul v-else-if="activeMediaType == 'television'" class="media-genres" >
                        <li>
                            <a href="1950" @click.prevent="loadMedia('1950', 'television')">1950</a>
                        </li>
                        <li>
                            <a href="1960" @click.prevent="loadMedia('1960', 'television')">1960</a>
                        </li>
                        <li>
                            <a href="1970" @click.prevent="loadMedia('1970', 'television')">1970</a>
                        </li>
                        <li>
                            <a href="1980" @click.prevent="loadMedia('1980', 'television')">1980</a>
                        </li>
                        <li>
                            <a href="1990" @click.prevent="loadMedia('1990', 'television')">1990</a>
                        </li>
                        <li>
                            <a href="all" @click.prevent="loadMedia(null, null)">All</a>
                        </li>
                    </ul>
                    <ul v-else class="media-genres">
                        <li>
                            <a href="1950" @click.prevent="loadMedia('1950', 'audio')">1950</a>
                        </li>
                        <li>
                            <a href="1960" @click.prevent="loadMedia('1960', 'audio')">1960</a>
                        </li>
                        <li>
                            <a href="1970" @click.prevent="loadMedia('1970', 'audio')">1970</a>
                        </li>
                        <li>
                            <a href="1980" @click.prevent="loadMedia('1980', 'audio')">1980</a>
                        </li>
                        <li>
                            <a href="1990" @click.prevent="loadMedia('1990', 'audio')">1990</a>
                        </li>
                        <li>
                            <a href="all" @click.prevent="loadMedia(null, null)">All</a>
                        </li>
                    </ul>


                <div class="thumb-wrapper clearfix">
                    <img v-if="activeMediaType == 'video'" v-for="media in retrievedMediaInfo" :src="'images/video/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb">
                    <img v-if="activeMediaType == 'television'" v-for="media in retrievedMediaInfo" :src="'images/tv/' + media.tv_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb">
                    <img v-if="activeMediaType == 'audio'" v-for="media in retrievedMediaInfo" :src="'images/audio/' + media.audio_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb audio-thumb">
                </div>

                <div class="row" v-if="activeMediaType == 'video' && retrievedMediaInfo.length > 0">

                <div class="media-bg"><h2 class="media-title">{{ currentMediaInfo.movies_title }}</h2></div>
    
                    <iframe id="ytplayer" type="text/html" width="100%" height="600px"
                  :src="currentMediaInfo.movies_trailer"
                  frameborder="0"></iframe>
    
                </div>
    
    
            <div class="row" v-if="activeMediaType == 'television' && retrievedMediaInfo.length > 0">
    
                  <h2 class="media-title">{{currentMediaInfo.tv_name}}</h2>
    
                <iframe id="ytplayer" type="text/html" width="100%" height="600px"
        :src="currentMediaInfo.tv_trailer"
        frameborder="0"></iframe>
    
            </div>
            
    
            <div class="row" v-if="activeMediaType == 'audio' && retrievedMediaInfo.length > 0">
                <div class="col-12 order-2 order-md-1 col-md-6 media-container">
                    <h2 class="media-title">{{ currentMediaInfo.audio_name }}</h2>
    
                </div>
                <div class="col-12 order-1 order-md-2 col-md-6 audio-wrapper">
                    <audio autoplay controls :src="'images/audio/' + currentMediaInfo.audio_source"/>
    
                </div>
            </div>
    


            </div>
        </div>
    `,

    data() {
        return {

            activeMediaType: "video",
            currentMediaInfo: {
                source: [],
            },
            // icons
            mediaTypes: [
                { name: "Movie", icon: "movie.svg", alt: "video" },
                { name: "TV", icon: "tv.svg", alt: "television" },
                { name: "Audio", icon: "audio.svg", alt: "audio" }
            ],

            retrievedMediaInfo: [],

            vidActive: false,
            eraFilters: [

                {name: "1950", click: "1950"},
                {name: "1960", click: "1960"},
                {name: "1970", click: "1970"},
                {name: "1980", click: "1980"},
                {name: "1990", click: "1990"},
                {name: "All", click: "null"},
            ]
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "video");
    },

    methods: {

        loadMedia(filter, mediaType) {
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }
            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    this.retrievedMediaInfo = data;
                    this.currentMediaInfo = data[0];
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaInfo = media;
        }
    }
}