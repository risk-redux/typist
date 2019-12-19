SecurityObjective.destroy_all

SecurityObjective.create({name: "confidentiality", description: "Preserving authorized restrictions on information access and disclosure, including means for protecting personal privacy and proprietary information... [44 U.S.C., Sec. 3542]

A loss of confidentiality is the unauthorized disclosure of information."})
SecurityObjective.create({name: "integrity", description: "Guarding against improper information modification or destruction, and includes ensuring information non-repudiation and authenticity... [44 U.S.C., Sec. 3542]

A loss of integrity is the unauthorized modification or destruction of information."})
SecurityObjective.create({name: "availability", description: "Ensuring timely and reliable access to and use of information... [44 U.S.C., SEC. 3542]

A loss of availability is the disruption of access to or use of information or an information system."})

puts "Created #{SecurityObjective.count} Security Objectives."