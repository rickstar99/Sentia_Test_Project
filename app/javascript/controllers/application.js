import { Application } from "@hotwired/stimulus"
import { CSV }

const application = Application.start()
const csv = CSV.parse()
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
