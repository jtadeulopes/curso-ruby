#include <ruby.h>

VALUE modulo, classe;

VALUE c_descricao_set(VALUE self, VALUE descricao) {
  rb_iv_set(self, "@descricao", descricao);
}

VALUE c_descricao_get(VALUE self) {
  rb_iv_get(self, "@descricao");
}

VALUE olamundo(VALUE self) {
  rb_str_new2("ola mundo");
}

VALUE listaalunos(VALUE self) {
  rb_ary_new();
}

void Init_curso() {
  modulo = rb_define_module("Curso");
  classe = rb_define_class_under(modulo, "Horario", rb_cObject);
  rb_define_method(classe, "descricao=", c_descricao_set, 1);
  rb_define_method(classe, "descricao", c_descricao_get, 0);
  rb_define_method(classe, "ola_mundo", olamundo, 0);
  rb_define_method(classe, "alunos", listaalunos, 0);

}
