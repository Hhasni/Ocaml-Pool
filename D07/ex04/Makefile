NAME = a.out

SOURCES = people.ml doctor.ml dalek.ml army.ml galifrey.ml main.ml

CAMLC = ocamlc
CAMLOPT = ocamlopt
CAMLDEP = ocamldep

all: $(NAME)

$(NAME): opt byt
	ln -s $(NAME).byt $(NAME)

opt: $(NAME).opt
byt: $(NAME).byt

OBJS = $(SOURCES:.ml = .cmo)
O = $(SOURCES:.ml = .o)
OPTOBJS = $(SOURCES:.ml = .cmx)

$(NAME).byt:	$(OBJS)
		$(CAMLC) -o $(NAME).byt $(OBJS)

$(NAME).opt:	$(OPTOBJS)
		$(CAMLOPT) -o $(NAME).opt $(OPTOBJS)

.SUFFIXES:
.SUFFIXES: .ml .mli .cmo .cmi .cmx

.ml.cmo:
	$(CAMLC) -c $<
.mli.cmi:
	$(CAMLC) -c $<
.ml.cmx:
	$(CAMLOPT) -c $<

clean:
	rm -f *.cm[iox] *~ .*~ *.o

fclean: clean
	rm -f $(NAME)
	rm -f $(NAME).opt
	rm -f $(NAME).byt

depend: .depend
	$(CAMLDEP) $(SOURCES) > .depend

re: fclean all