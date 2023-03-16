(deftemplate wheat
    (slot area)
    (slot perimeter)
    (slot kernelgroove)
    (slot asymmetrycoeff)
    (slot kernelwidth)
    (slot kernellength)
    (slot compactness)
)



(defrule class11
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (<= ?kernelgroove 5.09) (<= ?area 13.41) (<= ?asymmetrycoeff 3.24)))
    =>
    (printout t "Classified as class-1 wheat" crlf)
)

(defrule class31
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (<= ?kernelgroove 5.62) (> ?kernelgroove 5.09) (<= ?area 13.41) (<= ?asymmetrycoeff 3.24)))
    =>
    (printout t "Classified as class-3 wheat" crlf)
)

(defrule class32
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (<= ?kernelgroove 4.85) (<= ?area 12.22) (> ?asymmetrycoeff 3.24)))
    =>
    (printout t "Classified as class-3 wheat" crlf)
)

(defrule class12
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (<= ?kernelgroove 4.85) (<= ?area 13.41) (> ?area 12.22) (> ?asymmetrycoeff 3.24)))
    =>
    (printout t "Classified as class-1 wheat" crlf)
)

(defrule class33
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (> ?kernelgroove 4.85) (<= ?kernelgroove 5.62) (<= ?area 13.41) (> ?asymmetrycoeff 3.24)))
    =>
    (printout t "Classified as class-3 wheat" crlf)
)

(defrule class13
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (<= ?kernelwidth 3.57) (> ?area 13.41)))
    =>
    (printout t "Classified as class-1 wheat" crlf)
)

(defrule class21
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (<= ?kernelgroove 5.31) (> ?area 13.41) (> ?kernelwidth 3.57)))
    =>
    (printout t "Classified as class-2 wheat" crlf)
)

(defrule class14
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (> ?kernelgroove 5.31) (> ?area 13.41) (> ?kernelwidth 3.57)))
    =>
    (printout t "Classified as class-1 wheat" crlf)
)

(defrule class15
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (> ?kernelgroove 5.09) (<= ?perimeter 15.84) (<= ?asymmetrycoeff 2.05)))
    =>
    (printout t "Classified as class-1 wheat" crlf)
)

(defrule class22
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (> ?kernelgroove 5.09) (> ?perimeter 15.84) (<= ?asymmetrycoeff 2.05)))
    =>
    (printout t "Classified as class-2 wheat" crlf)
)

(defrule class23
    (wheat (area ?area) (perimeter ?perimeter) 
    (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) 
    (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness))
    (test (and (> ?kernelgroove 5.09) (> ?asymmetrycoeff 2.05)))
    =>
    (printout t "Classified as class-2 wheat" crlf)
)

(defrule classify-wheat
=>
(printout t crlf "Wheat seed classification")
(printout t crlf "What is the area size? ")
(bind ?area (read))
(printout t crlf "What is the perimeter size? ")
(bind ?perimeter (read))
(printout t crlf "What is the kernel groove size? ")
(bind ?kernelgroove (read))
(printout t crlf "What is the asymmetry coeff size? ")
(bind ?asymmetrycoeff (read))
(printout t crlf "What is the kernel width size? ")
(bind ?kernelwidth (read))
(printout t crlf "What is the kernel length size? ")
(bind ?kernellength (read))
(printout t crlf "What is the compactness size? ")
(bind ?compactness (read))
(assert (wheat (area ?area) (perimeter ?perimeter) (kernelgroove ?kernelgroove) (asymmetrycoeff ?asymmetrycoeff) (kernelwidth ?kernelwidth) (kernellength ?kernellength) (compactness ?compactness)))
(printout t crlf "RECOMMENDATIONS:" crlf))
