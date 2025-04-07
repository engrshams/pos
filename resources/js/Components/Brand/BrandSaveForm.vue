<template>
    <div class="container-fluid">
        <div class="row d-flex justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="float-end">
                            <Link href="/BrandPage" class="btn btn-success mx-3 btn-sm">
                            Back
                            </Link>
                        </div>
                        <form @submit.prevent="submit" enctype="multipart/form-data">
                            <div class="card-body">
                                <h4>Save Brand</h4>
                                <input id="name" v-model="form.name" name="name" placeholder="Brand Name"
                                    class="form-control" type="text" />
                                <br />
                                <!-- Category Dropdown -->
                                <div>
                                    <label for="category">Select Category:</label>
                                    <select v-model="form.category_id" class="form-control" id="category">
                                        <option value="" disabled>Select a category</option>
                                    <option v-for="category in categories" :key="category.id" :value="category.id">{{ category.name }}</option>
                                    </select>
                                </div>
                                <br />
                                <button type="submit" class="btn w-100 btn-success">Save Change</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { Link, useForm, usePage, router } from "@inertiajs/vue3";  // data send from front end to backend by useForm, receive data/response from page by usePage
import { createToaster } from "@meforma/vue-toaster";
const toaster = createToaster({ position: "top-right" });
import { ref } from "vue";

//search id from browser url
const urlParams = new URLSearchParams(window.location.search);
let id = ref(parseInt(urlParams.get("id")));

const form = useForm({ name: '', category_id: '', id: id.value || null });
const page = usePage();

const categories = ref(page.props.categories)

let URL = "/add-brand";
let brand = page.props.brand;  // get Brand from page props

if (id.value !== 0 && brand !== null) {
    URL = "/update-brand";
    form.id = brand['id'];  // set Brand id to form id;
    form.name = brand['name'];  // set Brand name to form name
    form.category_id = brand['category_id'];
}

function submit() {
    if (form.name.length === 0) {
        toaster.warning("Name is required");
    } else {
        form.post(URL, {
            onSuccess: () => {
                if (page.props.flash.status == true) {
                    router.get('/BrandPage');
                    toaster.success(page.props.flash.message);
                } else {
                    toaster.error(page.props.flash.message);
                }
            }
        });
    }
}

</script>