targets_nocoq := depend ocaml2zoo

.PHONY : all
all :

.PHONY : depend
depend :
	@ opam install . --deps-only --yes

Makefile.coq : _CoqProject
	@ coq_makefile -f $< -o $@

ifeq (,$(filter $(targets_nocoq),$(MAKECMDGOALS)))
-include Makefile.coq
endif

.PHONY : clean
clean ::
	@ rm -f Makefile.coq Makefile.coq.conf
