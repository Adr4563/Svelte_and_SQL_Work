import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import '../stylesheets/styles.css';
import Web from '../components/layouts/Web.svelte';

const web = new Web({
	target: document.body,
	props: {
		name: 'world'
	}
});

export default web;