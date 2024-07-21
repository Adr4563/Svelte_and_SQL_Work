import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import '../stylesheets/styles.css';
import Access from '../components/layouts/Access.svelte';

const access = new Access({
	target: document.body,
	props: {
		name: 'world'
	}
});

export default access;