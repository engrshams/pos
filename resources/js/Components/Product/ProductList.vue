<template>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div>
                            <h3>Product</h3>
                        </div>
                        <hr />
                        <div class="float-end">
                            <Link href="/ProductSavePage?id=0" class="btn btn-success mx-3 btn-sm">
                                Add Product
                            </Link>
                        </div>
                        <div>
                            <input placeholder="Search..." class="form-control mb-2 w-auto form-control-sm" type="text"
                                v-model="searchValue">
                            <EasyDataTable
                                buttons-pagination
                                alternating
                                :headers="Header"
                                :items="Item"
                                :rows-per-page="10"
                                :search-field="searchField"
                                :search-value="searchValue" show-index>  // show-index display index column at first column
                                <template #item-image="{ image }" class="pt-2 pb-2">
                                    <!-- Check if image exists, else use placeholder -->
                                    <img :src="image ? image : '/uploads/placeholder.png'" :alt="image ? image : 'Default Image'" height="auto" width="40px">
                                </template>
                                <template #item-action="{ id }">
                                    <Link class="btn btn-success mx-3 btn-sm" :href="`/ProductSavePage?id=${id}`">Edit
                                    </Link>
                                    <button class="btn btn-danger btn-sm" @click="DeleteClick(id)">Delete</button>
                                </template>
                            </EasyDataTable>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { usePage, router, Link } from '@inertiajs/vue3'
import { createToaster } from "@meforma/vue-toaster";
const toaster = createToaster();
import { ref } from "vue";
let page = usePage()

const Header = [
    { text: "Image", value: "image" },
    { text: "Name", value: "name" },
    { text: "Category", value: "category.name" },
    { text: "Brand", value: "brand.name" },
    { text: "Price", value: "price" },
    { text: "Quantity", value: "unit" },
    { text: "Action", value: "action" },
];


const Item = ref(page.props.products.map(product => ({
    ...product,
    categoryName: product.category.name,  // Flatten category name for easy access
    brandName: product.brand.name,  // Flatten category name for easy access
})));
const searchField = ['name',"price","unit",'categoryName','brandName']; // Add 'name',"price","unit", also categoryName to search fields
//OR// const Item = ref(page.props.products)
const searchValue = ref()


const DeleteClick = (id) => {
    let text = "Do you want to delete";
    if (confirm(text) === true) {
        router.get(`/delete-product/${id}`)
        toaster.success('Product Deleted Successfully');
    } else {
        text = "You canceled!";
    }
}
</script>