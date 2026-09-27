#import "versions.typ"
#let version = sys.inputs.at("version", default: "embedded")
#dictionary(versions).at(version)()
