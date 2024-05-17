import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="complement"
export default class extends Controller {
  static targets = ["inputSequence", 
                    "outputSequence",
                    "complementRadio",
                    "reverseComplementRadio",
                    "reverseRadio",]

  base_complement = { "C": "G", "G": "C", "A": "T", "T": "A"}

  connect() {
    // This method is called when the controller is connected to the DOM
  }

  // This method is called when a key is pressed in the input sequence target
  input(event) {
    const validCharacters = /^[ACGT]+$/i;
    // Get the current value of the text area
    let inputValue = this.inputSequenceTarget.value.toUpperCase();
    if (!inputValue.match(validCharacters)) {
      // If it does not match the valid characters, remove the invalid characters
      inputValue = inputValue.replace(/[^ACGT]/gi, "");
    }
    // Update the value of the input sequence target with the sanitized input value
    this.inputSequenceTarget.value = inputValue.toUpperCase();

    // Calculate the complement of the input sequence and update the value of the output sequence target
    this.outputSequenceTarget.value = this.complement(this.inputSequenceTarget.value);
  }


  // This method calculates the complement of a given sequence
  complement(sequence) {
    // Split the sequence into an array of individual bases
    var bases = sequence.split("");

    // Check if the reverse radio or reverse complement radio is checked
    if (this.reverseRadioTarget.checked || this.reverseComplementRadioTarget.checked) {
      // Reverse the order of the bases
      bases = bases.reverse();
    }

    // Check if the complement radio or reverse complement radio is checked
    if (this.complementRadioTarget.checked || this.reverseComplementRadioTarget.checked) {
      // Map each base to its complement using the base_complement object
      bases = bases.map((base) => this.base_complement[base])
    }

    // Join the bases back together into a single string and return it
    return bases.join("");
  }
}
