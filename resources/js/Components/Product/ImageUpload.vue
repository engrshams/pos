<template>
    <div>
        <label for="image">            
            <img :src="preview || currentImage" class="img-thumbnail" height="50px" width="50px" />
        </label>
        <input
            @input="imageSelected($event)"
            type="file"
            name="image"
            id="image" />
    </div>
</template>

<script setup>
import { ref } from "vue";
const props = defineProps({
    productImage: String,
})

const currentImage = props.productImage ? props.productImage : '/uploads/placeholder.png'
const preview = ref(currentImage)

const emit = defineEmits(['image'])

const imageSelected = (e) => {
    const file = e.target.files[0]
    if(file){
        preview.value = URL.createObjectURL(file)
        emit('image', file)// child to parent transfer the image
    }
}

</script>