# typed: true

module RuboCop
end
module RuboCop::Version
  def self.document_version; end
  def self.extension_versions(env); end
  def self.feature_version(feature); end
  def self.version(debug: nil, env: nil); end
end
module RuboCop::Ext
end
module RuboCop::Ext::RegexpNode
  def assign_properties(*arg0); end
  def each_capture(named: nil); end
  def parsed_tree; end
  def with_interpolations_blanked; end
end
class RuboCop::AST::RegexpNode < RuboCop::AST::Node
  include RuboCop::Ext::RegexpNode
end
module RuboCop::Ext::RegexpParser
end
class RuboCop::Ext::RegexpParser::Map < Parser::Source::Map
  def begin; end
  def body; end
  def end; end
  def initialize(expression, body:, quantifier: nil, begin_l: nil, end_l: nil); end
  def quantifier; end
end
module RuboCop::Ext::RegexpParser::Expression
end
module RuboCop::Ext::RegexpParser::Expression::Base
  def build_location; end
  def expression; end
  def loc; end
  def origin; end
  def origin=(arg0); end
end
module RuboCop::Ext::RegexpParser::Expression::CharacterSet
  def build_location; end
end
class Regexp::Expression::Base
  include RuboCop::Ext::RegexpParser::Expression::Base
end
class Regexp::Expression::CharacterSet < Regexp::Expression::Subexpression
  include RuboCop::Ext::RegexpParser::Expression::CharacterSet
end
class String
  def blank?; end
end
class Hash
end
module RuboCop::Ext::ProcessedSource
  def comment_config; end
  def disabled_line_ranges; end
end
class RuboCop::AST::ProcessedSource
  include RuboCop::Ext::ProcessedSource
end
module RuboCop::PathUtil
  def absolute?(path); end
  def hidden_dir?(path); end
  def hidden_file?(path); end
  def hidden_file_in_not_hidden_dir?(pattern, path); end
  def match_path?(pattern, path); end
  def maybe_hidden_file?(path); end
  def relative_path(path, base_dir = nil); end
  def self.absolute?(path); end
  def self.hidden_dir?(path); end
  def self.hidden_file?(path); end
  def self.hidden_file_in_not_hidden_dir?(pattern, path); end
  def self.match_path?(pattern, path); end
  def self.maybe_hidden_file?(path); end
  def self.relative_path(path, base_dir = nil); end
  def self.smart_path(path); end
  def smart_path(path); end
end
module RuboCop::FileFinder
  def find_file_upwards(filename, start_dir, stop_dir = nil); end
  def find_last_file_upwards(filename, start_dir, stop_dir = nil); end
  def self.root_level=(level); end
  def self.root_level?(path, stop_dir); end
  def traverse_files_upwards(filename, start_dir, stop_dir); end
end
module RuboCop::Platform
  def self.windows?; end
end
module RuboCop::NameSimilarity
  def find_similar_name(target_name, names); end
  def find_similar_names(target_name, names); end
  def self.find_similar_name(target_name, names); end
  def self.find_similar_names(target_name, names); end
end
class RuboCop::StringInterpreter
  def self.interpret(string); end
  def self.interpret_hex(escape); end
  def self.interpret_octal(escape); end
  def self.interpret_string_escape(escape); end
  def self.interpret_unicode(escape); end
end
class RuboCop::Error < StandardError
end
class RuboCop::ValidationError < RuboCop::Error
end
class RuboCop::ErrorWithAnalyzedFileLocation < RuboCop::Error
  def cause; end
  def column; end
  def cop; end
  def initialize(cause:, node:, cop:); end
  def line; end
  def message; end
end
class RuboCop::Warning < StandardError
end
module RuboCop::Util
  def self.silence_warnings; end
end
module RuboCop::Cop
end
module RuboCop::Cop::Util
  def add_parentheses(node, corrector); end
  def args_begin(node); end
  def args_end(node); end
  def begins_its_line?(range); end
  def comment_line?(line_source); end
  def comment_lines?(node); end
  def compatible_external_encoding_for?(src); end
  def double_quotes_required?(string); end
  def escape_string(string); end
  def first_part_of_call_chain(node); end
  def indent(node); end
  def interpret_string_escapes(string); end
  def line_range(node); end
  def needs_escaping?(string); end
  def on_node(syms, sexp, excludes = nil, &block); end
  def parentheses?(node); end
  def same_line?(node1, node2); end
  def self.add_parentheses(node, corrector); end
  def self.args_begin(node); end
  def self.args_end(node); end
  def self.begins_its_line?(range); end
  def self.comment_line?(line_source); end
  def self.comment_lines?(node); end
  def self.double_quotes_required?(string); end
  def self.escape_string(string); end
  def self.first_part_of_call_chain(node); end
  def self.indent(node); end
  def self.interpret_string_escapes(string); end
  def self.line_range(node); end
  def self.needs_escaping?(string); end
  def self.on_node(syms, sexp, excludes = nil, &block); end
  def self.parentheses?(node); end
  def self.same_line?(node1, node2); end
  def self.to_string_literal(string); end
  def self.to_supported_styles(enforced_style); end
  def self.trim_string_interporation_escape_character(str); end
  def to_string_literal(string); end
  def to_supported_styles(enforced_style); end
  def trim_string_interporation_escape_character(str); end
  include RuboCop::PathUtil
end
class RuboCop::Cop::Offense
  def <=>(other); end
  def ==(other); end
  def column; end
  def column_length; end
  def column_range; end
  def cop_name; end
  def correctable?; end
  def corrected?; end
  def corrected_with_todo?; end
  def corrector; end
  def disabled?; end
  def eql?(other); end
  def first_line; end
  def hash; end
  def highlighted_area; end
  def initialize(severity, location, message, cop_name, status = nil, corrector = nil); end
  def last_column; end
  def last_line; end
  def line; end
  def location; end
  def message; end
  def real_column; end
  def severity; end
  def source_line; end
  def status; end
  def to_s; end
  include Comparable
end
class RuboCop::Cop::Offense::PseudoSourceRange < Struct
  def begin_pos; end
  def begin_pos=(_); end
  def column; end
  def column=(_); end
  def column_range; end
  def end_pos; end
  def end_pos=(_); end
  def first_line; end
  def last_column; end
  def last_line; end
  def length; end
  def line; end
  def line=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def size; end
  def source_line; end
  def source_line=(_); end
end
class RuboCop::Cop::MessageAnnotator
  def annotate(message); end
  def config; end
  def cop_config; end
  def cop_name; end
  def debug?; end
  def details; end
  def display_cop_names?; end
  def display_style_guide?; end
  def extra_details?; end
  def initialize(config, cop_name, cop_config, options); end
  def options; end
  def reference_urls; end
  def self.style_guide_urls; end
  def style_guide_base_url; end
  def style_guide_url; end
  def urls; end
end
module RuboCop::Cop::IgnoredNode
  def ignore_node(node); end
  def ignored_node?(node); end
  def ignored_nodes; end
  def part_of_ignored_node?(node); end
end
module RuboCop::Cop::AutocorrectLogic
  def autocorrect?; end
  def autocorrect_enabled?; end
  def autocorrect_requested?; end
  def correctable?; end
  def disable_offense(range); end
  def disable_offense_at_end_of_line(range, eol_comment); end
  def disable_offense_before_and_after(range_by_lines); end
  def disable_uncorrectable?; end
  def max_line_length; end
  def range_by_lines(range); end
  def range_of_first_line(range); end
  def safe_autocorrect?; end
  def surrounding_heredoc(offense_range); end
end
class RuboCop::Cop::Badge
  def ==(other); end
  def cop_name; end
  def department; end
  def eql?(other); end
  def hash; end
  def initialize(class_name_parts); end
  def match?(other); end
  def qualified?; end
  def self.for(class_name); end
  def self.parse(identifier); end
  def to_s; end
  def with_department(department); end
end
class RuboCop::Cop::AmbiguousCopName < RuboCop::Error
  def initialize(name, origin, badges); end
end
class RuboCop::Cop::Registry
  def ==(other); end
  def clear_enrollment_queue; end
  def contains_cop_matching?(names); end
  def cops; end
  def department_missing?(badge, name); end
  def departments; end
  def dismiss(cop); end
  def each(&block); end
  def enabled(config, only = nil, only_safe: nil); end
  def enabled?(cop, config, only_safe); end
  def enabled_pending_cop?(cop_cfg, config); end
  def enlist(cop); end
  def find_by_cop_name(cop_name); end
  def freeze; end
  def initialize(cops = nil, options = nil); end
  def initialize_copy(reg); end
  def length; end
  def names; end
  def options; end
  def print_warning(name, path); end
  def qualified_cop_name(name, path, warn: nil); end
  def qualify_badge(badge); end
  def registered?(badge); end
  def resolve_badge(given_badge, real_badge, source_path); end
  def select(&block); end
  def self.all; end
  def self.global; end
  def self.qualified_cop_name(name, origin); end
  def self.reset!; end
  def self.with_temporary_global(temp_global = nil); end
  def sort!; end
  def to_h; end
  def unqualified_cop_names; end
  def with(cops); end
  def with_department(department); end
  def without_department(department); end
  include Enumerable
end
class RuboCop::Cop::Base
  def add_global_offense(message = nil, severity: nil); end
  def add_offense(node_or_range, message: nil, severity: nil, &block); end
  def annotate(message); end
  def apply_correction(corrector); end
  def attempt_correction(range, corrector); end
  def begin_investigation(processed_source); end
  def callback_argument(range); end
  def callbacks_needed; end
  def complete_investigation; end
  def config; end
  def config_to_allow_offenses; end
  def config_to_allow_offenses=(hash); end
  def cop_config; end
  def cop_name; end
  def correct(range); end
  def current_offense_locations; end
  def currently_disabled_lines; end
  def custom_severity; end
  def default_severity; end
  def disable_uncorrectable(range); end
  def enabled_line?(line_number); end
  def excluded_file?(file); end
  def external_dependency_checksum; end
  def file_name_matches_any?(file, parameter, default_result); end
  def find_message(range, message); end
  def find_severity(_range, severity); end
  def initialize(config = nil, options = nil); end
  def message(_range = nil); end
  def name; end
  def offenses; end
  def on_investigation_end; end
  def on_new_investigation; end
  def on_other_file; end
  def processed_source; end
  def range_from_node_or_range(node_or_range); end
  def ready; end
  def relevant_file?(file); end
  def reset_investigation; end
  def self.autocorrect_incompatible_with; end
  def self.badge; end
  def self.builtin?; end
  def self.callbacks_needed; end
  def self.cop_name; end
  def self.department; end
  def self.documentation_url; end
  def self.exclude_from_registry; end
  def self.inherited(subclass); end
  def self.joining_forces; end
  def self.lint?; end
  def self.match?(given_names); end
  def self.restrict_on_send; end
  def self.support_autocorrect?; end
  def self.support_multiple_source?; end
  def target_rails_version; end
  def target_ruby_version; end
  def use_corrector(range, corrector); end
  extend RuboCop::AST::NodePattern::Macros
  extend RuboCop::AST::Sexp
  include RuboCop::AST::Sexp
  include RuboCop::Cop::AutocorrectLogic
  include RuboCop::Cop::IgnoredNode
  include RuboCop::Cop::Util
end
class RuboCop::Cop::Base::InvestigationReport < Struct
  def cop; end
  def cop=(_); end
  def corrector; end
  def corrector=(_); end
  def offenses; end
  def offenses=(_); end
  def processed_source; end
  def processed_source=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
module RuboCop::Cop::Legacy
end
class RuboCop::Cop::Legacy::CorrectionsProxy
  def <<(callable); end
  def concat(corrections); end
  def corrector; end
  def empty?; end
  def initialize(corrector); end
  def suppress_clobbering; end
end
class RuboCop::Cop::Cop < RuboCop::Cop::Base
  def add_offense(node_or_range, location: nil, message: nil, severity: nil, &block); end
  def apply_correction(corrector); end
  def begin_investigation(processed_source); end
  def callback_argument(_range); end
  def correction_lambda; end
  def corrections; end
  def dedup_on_node(node); end
  def emulate_v0_callsequence(corrector); end
  def find_location(node, loc); end
  def offenses; end
  def on_investigation_end; end
  def on_new_investigation; end
  def parse(source, path = nil); end
  def self.all; end
  def self.joining_forces; end
  def self.qualified_cop_name(name, origin); end
  def self.registry; end
  def self.support_autocorrect?; end
  def support_autocorrect?; end
  def suppress_clobbering; end
end
class RuboCop::Cop::Cop::Correction < Struct
  def call(corrector); end
  def cop; end
  def cop=(_); end
  def lambda; end
  def lambda=(_); end
  def node; end
  def node=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RuboCop::Cop::Commissioner
  def build_callbacks(cops); end
  def errors; end
  def initialize(cops, forces = nil, options = nil); end
  def initialize_callbacks; end
  def investigate(processed_source); end
  def invoke(callback, cops, *args); end
  def on___ENCODING__(node); end
  def on___FILE__(node); end
  def on___LINE__(node); end
  def on_alias(node); end
  def on_and(node); end
  def on_and_asgn(node); end
  def on_arg(node); end
  def on_arg_expr(node); end
  def on_args(node); end
  def on_array(node); end
  def on_array_pattern(node); end
  def on_array_pattern_with_tail(node); end
  def on_back_ref(node); end
  def on_begin(node); end
  def on_block(node); end
  def on_block_pass(node); end
  def on_blockarg(node); end
  def on_break(node); end
  def on_case(node); end
  def on_case_match(node); end
  def on_casgn(node); end
  def on_cbase(node); end
  def on_class(node); end
  def on_complex(node); end
  def on_const(node); end
  def on_const_pattern(node); end
  def on_csend(node); end
  def on_cvar(node); end
  def on_cvasgn(node); end
  def on_def(node); end
  def on_defined?(node); end
  def on_defs(node); end
  def on_dstr(node); end
  def on_dsym(node); end
  def on_eflipflop(node); end
  def on_empty_else(node); end
  def on_ensure(node); end
  def on_erange(node); end
  def on_false(node); end
  def on_find_pattern(node); end
  def on_float(node); end
  def on_for(node); end
  def on_forward_arg(node); end
  def on_forward_args(node); end
  def on_forwarded_args(node); end
  def on_gvar(node); end
  def on_gvasgn(node); end
  def on_hash(node); end
  def on_hash_pattern(node); end
  def on_if(node); end
  def on_if_guard(node); end
  def on_iflipflop(node); end
  def on_in_match(node); end
  def on_in_pattern(node); end
  def on_index(node); end
  def on_indexasgn(node); end
  def on_int(node); end
  def on_irange(node); end
  def on_ivar(node); end
  def on_ivasgn(node); end
  def on_kwarg(node); end
  def on_kwargs(node); end
  def on_kwbegin(node); end
  def on_kwnilarg(node); end
  def on_kwoptarg(node); end
  def on_kwrestarg(node); end
  def on_kwsplat(node); end
  def on_lambda(node); end
  def on_lvar(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_match_alt(node); end
  def on_match_as(node); end
  def on_match_current_line(node); end
  def on_match_nil_pattern(node); end
  def on_match_pattern(node); end
  def on_match_pattern_p(node); end
  def on_match_rest(node); end
  def on_match_var(node); end
  def on_match_with_lvasgn(node); end
  def on_match_with_trailing_comma(node); end
  def on_mlhs(node); end
  def on_module(node); end
  def on_next(node); end
  def on_nil(node); end
  def on_not(node); end
  def on_nth_ref(node); end
  def on_numblock(node); end
  def on_op_asgn(node); end
  def on_optarg(node); end
  def on_or(node); end
  def on_or_asgn(node); end
  def on_pair(node); end
  def on_pin(node); end
  def on_postexe(node); end
  def on_preexe(node); end
  def on_procarg0(node); end
  def on_rational(node); end
  def on_redo(node); end
  def on_regexp(node); end
  def on_regopt(node); end
  def on_resbody(node); end
  def on_rescue(node); end
  def on_restarg(node); end
  def on_retry(node); end
  def on_return(node); end
  def on_sclass(node); end
  def on_self(node); end
  def on_send(node); end
  def on_shadowarg(node); end
  def on_splat(node); end
  def on_str(node); end
  def on_super(node); end
  def on_sym(node); end
  def on_true(node); end
  def on_undef(node); end
  def on_unless_guard(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_when(node); end
  def on_while(node); end
  def on_while_post(node); end
  def on_xstr(node); end
  def on_yield(node); end
  def on_zsuper(node); end
  def reset; end
  def restrict_callbacks(callbacks); end
  def restricted_map(callbacks); end
  def trigger_responding_cops(callback, node); end
  def trigger_restricted_cops(event, node); end
  def with_cop_error_handling(cop, node = nil); end
  include RuboCop::AST::Traversal
end
class RuboCop::Cop::Commissioner::InvestigationReport < Struct
  def cop_reports; end
  def cop_reports=(_); end
  def cops; end
  def correctors; end
  def errors; end
  def errors=(_); end
  def merge(investigation); end
  def offenses; end
  def offenses_per_cop; end
  def processed_source; end
  def processed_source=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
module RuboCop::Cop::Documentation
  def department_to_basename(department); end
  def self.department_to_basename(department); end
  def self.url_for(cop_class); end
  def url_for(cop_class); end
end
class RuboCop::Cop::Corrector < Parser::Source::TreeRewriter
  def check_range_validity(node_or_range); end
  def initialize(source); end
  def remove_leading(node_or_range, size); end
  def remove_preceding(node_or_range, size); end
  def remove_trailing(node_or_range, size); end
  def rewrite; end
  def self.source_buffer(source); end
  def to_range(node_or_range); end
  def validate_buffer(buffer); end
end
class RuboCop::Cop::Force
  def cops; end
  def initialize(cops); end
  def investigate(_processed_source); end
  def name; end
  def run_hook(method_name, *args); end
  def self.all; end
  def self.force_name; end
  def self.inherited(subclass); end
end
class RuboCop::Cop::Severity
  def <=>(other); end
  def ==(other); end
  def code; end
  def hash; end
  def initialize(name_or_code); end
  def level; end
  def name; end
  def self.name_from_code(code); end
  def to_s; end
  include Comparable
end
class RuboCop::Cop::Generator
  def badge; end
  def generate(template); end
  def generated_source; end
  def generated_spec; end
  def github_user; end
  def initialize(name, github_user, output: nil); end
  def inject_config(config_file_path: nil, version_added: nil); end
  def inject_require(root_file_path: nil); end
  def output; end
  def snake_case(camel_case_string); end
  def source_path; end
  def spec_path; end
  def todo; end
  def write_source; end
  def write_spec; end
  def write_unless_file_exists(path, contents); end
end
class RuboCop::Cop::Generator::ConfigurationInjector
  def badge; end
  def configuration_entries; end
  def configuration_file_path; end
  def cop_name_line?(yaml); end
  def find_target_line; end
  def initialize(configuration_file_path:, badge:, version_added: nil); end
  def inject; end
  def new_configuration_entry; end
  def output; end
  def version_added; end
end
class RuboCop::Cop::Generator::RequireFileInjector
  def initialize(source_path:, root_file_path:, output: nil); end
  def inject; end
  def injectable_require_directive; end
  def output; end
  def require_entries; end
  def require_exists?; end
  def require_path; end
  def require_path_fragments(require_directove); end
  def root_file_path; end
  def source_path; end
  def target_line; end
  def updated_directives; end
end
class RuboCop::Cop::VariableForce < RuboCop::Cop::Force
  def after_declaring_variable(arg); end
  def after_entering_scope(arg); end
  def after_leaving_scope(arg); end
  def before_declaring_variable(arg); end
  def before_entering_scope(arg); end
  def before_leaving_scope(arg); end
  def descendant_reference(node); end
  def each_descendant_reference(loop_node); end
  def find_variables_in_loop(loop_node); end
  def inspect_variables_in_scope(scope_node); end
  def investigate(processed_source); end
  def mark_assignments_as_referenced_in_loop(node); end
  def node_handler_method_name(node); end
  def process_children(origin_node); end
  def process_loop(node); end
  def process_node(node); end
  def process_regexp_named_captures(node); end
  def process_rescue(node); end
  def process_scope(node); end
  def process_send(node); end
  def process_variable_assignment(node); end
  def process_variable_declaration(node); end
  def process_variable_multiple_assignment(node); end
  def process_variable_operator_assignment(node); end
  def process_variable_referencing(node); end
  def process_zero_arity_super(node); end
  def regexp_captured_names(node); end
  def scanned_node?(node); end
  def scanned_nodes; end
  def skip_children!; end
  def twisted_nodes(node); end
  def variable_table; end
end
class RuboCop::Cop::VariableForce::VariableReference < Struct
  def assignment?; end
  def name; end
  def name=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RuboCop::Cop::VariableForce::AssignmentReference < Struct
  def assignment?; end
  def node; end
  def node=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
module RuboCop::Cop::VariableForce::Branch
  def self.of(target_node, scope: nil); end
end
class RuboCop::Cop::VariableForce::Branch::Base < Struct
  def ==(other); end
  def always_run?; end
  def branched?; end
  def child_node; end
  def child_node=(_); end
  def control_node; end
  def each_ancestor(include_self: nil, &block); end
  def eql?(other); end
  def exclusive_with?(other); end
  def hash; end
  def may_jump_to_other_branch?; end
  def may_run_incompletely?; end
  def parent; end
  def scan_ancestors; end
  def scope; end
  def scope=(_); end
  def self.[](*arg0); end
  def self.classes; end
  def self.define_predicate(name, child_index: nil); end
  def self.inherited(subclass); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def self.type; end
end
module RuboCop::Cop::VariableForce::Branch::SimpleConditional
  def always_run?; end
  def conditional_clause?; end
end
class RuboCop::Cop::VariableForce::Branch::If < RuboCop::Cop::VariableForce::Branch::Base
  def conditional_clause?; end
  def falsey_body?; end
  def truthy_body?; end
  include RuboCop::Cop::VariableForce::Branch::SimpleConditional
end
class RuboCop::Cop::VariableForce::Branch::While < RuboCop::Cop::VariableForce::Branch::Base
  def conditional_clause?; end
  def loop_body?; end
  include RuboCop::Cop::VariableForce::Branch::SimpleConditional
end
class RuboCop::Cop::VariableForce::Branch::Until < RuboCop::Cop::VariableForce::Branch::Base
  def conditional_clause?; end
  def loop_body?; end
  include RuboCop::Cop::VariableForce::Branch::SimpleConditional
end
class RuboCop::Cop::VariableForce::Branch::WhilePost < RuboCop::Cop::VariableForce::Branch::Base
  def conditional_clause?; end
  def loop_body?; end
  include RuboCop::Cop::VariableForce::Branch::SimpleConditional
end
class RuboCop::Cop::VariableForce::Branch::UntilPost < RuboCop::Cop::VariableForce::Branch::Base
  def conditional_clause?; end
  def loop_body?; end
  include RuboCop::Cop::VariableForce::Branch::SimpleConditional
end
class RuboCop::Cop::VariableForce::Branch::Case < RuboCop::Cop::VariableForce::Branch::Base
  def always_run?; end
  def else_body?; end
  def target?; end
  def when_clause?; end
end
class RuboCop::Cop::VariableForce::Branch::For < RuboCop::Cop::VariableForce::Branch::Base
  def always_run?; end
  def collection?; end
  def element?; end
  def loop_body?; end
end
module RuboCop::Cop::VariableForce::Branch::LogicalOperator
  def always_run?; end
end
class RuboCop::Cop::VariableForce::Branch::And < RuboCop::Cop::VariableForce::Branch::Base
  def left_body?; end
  def right_body?; end
  include RuboCop::Cop::VariableForce::Branch::LogicalOperator
end
class RuboCop::Cop::VariableForce::Branch::Or < RuboCop::Cop::VariableForce::Branch::Base
  def left_body?; end
  def right_body?; end
  include RuboCop::Cop::VariableForce::Branch::LogicalOperator
end
module RuboCop::Cop::VariableForce::Branch::ExceptionHandler
  def may_jump_to_other_branch?; end
  def may_run_incompletely?; end
end
class RuboCop::Cop::VariableForce::Branch::Rescue < RuboCop::Cop::VariableForce::Branch::Base
  def always_run?; end
  def else_body?; end
  def main_body?; end
  def rescue_clause?; end
  include RuboCop::Cop::VariableForce::Branch::ExceptionHandler
end
class RuboCop::Cop::VariableForce::Branch::Ensure < RuboCop::Cop::VariableForce::Branch::Base
  def always_run?; end
  def ensure_body?; end
  def main_body?; end
  include RuboCop::Cop::VariableForce::Branch::ExceptionHandler
end
module RuboCop::Cop::VariableForce::Branchable
  def branch; end
  def run_exclusively_with?(other); end
end
class RuboCop::Cop::VariableForce::Variable
  def argument?; end
  def assign(node); end
  def assignments; end
  def block_argument?; end
  def capture_with_block!; end
  def captured_by_block; end
  def captured_by_block?; end
  def declaration_node; end
  def explicit_block_local_variable?; end
  def in_modifier_if?(assignment); end
  def initialize(name, declaration_node, scope); end
  def keyword_argument?; end
  def method_argument?; end
  def name; end
  def reference!(node); end
  def referenced?; end
  def references; end
  def scope; end
  def should_be_unused?; end
  def used?; end
end
class RuboCop::Cop::VariableForce::Assignment
  def initialize(node, variable); end
  def meta_assignment_node; end
  def multiple_assignment?; end
  def multiple_assignment_node; end
  def name; end
  def node; end
  def operator; end
  def operator_assignment?; end
  def operator_assignment_node; end
  def reference!(node); end
  def referenced; end
  def referenced?; end
  def references; end
  def regexp_named_capture?; end
  def scope; end
  def used?; end
  def variable; end
  include RuboCop::Cop::VariableForce::Branchable
end
class RuboCop::Cop::VariableForce::Reference
  def explicit?; end
  def initialize(node, scope); end
  def node; end
  def scope; end
  include RuboCop::Cop::VariableForce::Branchable
end
class RuboCop::Cop::VariableForce::Scope
  def ==(other); end
  def ancestor_node?(target_node); end
  def belong_to_inner_scope?(target_node); end
  def belong_to_outer_scope?(target_node); end
  def body_node; end
  def each_node(&block); end
  def include?(target_node); end
  def initialize(node); end
  def naked_top_level; end
  def naked_top_level?; end
  def name; end
  def node; end
  def scan_node(node, &block); end
  def variables; end
end
class RuboCop::Cop::VariableForce::VariableTable
  def accessible_variables; end
  def assign_to_variable(name, node); end
  def current_scope; end
  def current_scope_level; end
  def declare_variable(name, node); end
  def find_variable(name); end
  def initialize(hook_receiver = nil); end
  def invoke_hook(hook_name, *args); end
  def mark_variable_as_captured_by_block_if_so(variable); end
  def pop_scope; end
  def push_scope(scope_node); end
  def reference_variable(name, node); end
  def scope_stack; end
  def variable_exist?(name); end
end
module RuboCop::Cop::Style
end
module RuboCop::Cop::Style::AnnotationComment
  def annotation?(comment); end
  def just_first_word_of_sentence?(first_word, colon, space, note); end
  def keyword?(word); end
  def keyword_appearance?(first_word, colon, space); end
  def split_comment(comment); end
end
module RuboCop::Cop::ArrayMinSize
  def array_style_detected(style, ary_size); end
  def below_array_length?(node); end
  def largest_brackets_size(style, ary_size); end
  def min_size_config; end
  def smallest_percent_size(style, ary_size); end
end
module RuboCop::Cop::ArraySyntax
  def bracketed_array_of?(element_type, node); end
end
module RuboCop::Cop::Alignment
  def check_alignment(items, base_column = nil); end
  def column_delta; end
  def configured_indentation_width; end
  def display_column(range); end
  def each_bad_alignment(items, base_column); end
  def end_of_line_comment(line); end
  def indentation(node); end
  def offset(node); end
  def within?(inner, outer); end
end
module RuboCop::Cop::AllowedIdentifiers
  def allowed_identifier?(name); end
  def allowed_identifiers; end
end
module RuboCop::Cop::AllowedMethods
  def allowed_method?(name); end
  def allowed_methods; end
end
module RuboCop::Cop::AutoCorrector
  def support_autocorrect?; end
end
module RuboCop::Cop::CheckAssignment
  def extract_rhs(node); end
  def on_and_asgn(node); end
  def on_casgn(node); end
  def on_cvasgn(node); end
  def on_gvasgn(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_op_asgn(node); end
  def on_or_asgn(node); end
  def on_send(node); end
  def self.extract_rhs(node); end
end
module RuboCop::Cop::CheckLineBreakable
  def all_on_same_line?(nodes); end
  def already_on_multiple_lines?(node); end
  def breakable_collection?(node, elements); end
  def children_could_be_broken_up?(children); end
  def contained_by_breakable_collection_on_same_line?(node); end
  def contained_by_multiline_collection_that_could_be_broken_up?(node); end
  def extract_breakable_node(node, max); end
  def extract_breakable_node_from_elements(node, elements, max); end
  def extract_first_element_over_column_limit(node, elements, max); end
  def process_args(args); end
  def safe_to_ignore?(node); end
  def within_column_limit?(element, max, line); end
end
module RuboCop::Cop::ConfigurableMax
  def max=(value); end
  def max_parameter_name; end
end
module RuboCop::Cop::CodeLength
  def build_code_length_calculator(node); end
  def check_code_length(node); end
  def count_as_one; end
  def count_comments?; end
  def irrelevant_line(source_line); end
  def max_length; end
  def message(length, max_length); end
  include RuboCop::Cop::ConfigurableMax
end
module RuboCop::Cop::ConfigurableEnforcedStyle
  def alternative_style; end
  def alternative_styles; end
  def ambiguous_style_detected(*possibilities); end
  def conflicting_styles_detected; end
  def correct_style_detected; end
  def detected_style; end
  def detected_style=(style); end
  def no_acceptable_style!; end
  def no_acceptable_style?; end
  def opposite_style_detected; end
  def style; end
  def style_configured?; end
  def style_detected(detected); end
  def style_parameter_name; end
  def supported_styles; end
  def unexpected_style_detected(unexpected); end
  def unrecognized_style_detected; end
end
module RuboCop::Cop::ConfigurableFormatting
  def check_name(node, name, name_range); end
  def class_emitter_method?(node, name); end
  def report_opposing_styles(node, name); end
  def valid_name?(node, name, given_style = nil); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
module RuboCop::Cop::ConfigurableNaming
  include RuboCop::Cop::ConfigurableFormatting
end
module RuboCop::Cop::ConfigurableNumbering
  include RuboCop::Cop::ConfigurableFormatting
end
module RuboCop::Cop::DefNode
  def non_public?(node); end
  def non_public_modifier?(param0 = nil); end
  def preceding_non_public_modifier?(node); end
  def stripped_source_upto(index); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::DocumentationComment
  def documentation_comment?(node); end
  def interpreter_directive_comment?(comment); end
  def precede?(node1, node2); end
  def preceding_comment?(node1, node2); end
  def preceding_lines(node); end
  def rubocop_directive_comment?(comment); end
  extend RuboCop::AST::NodePattern::Macros
  include RuboCop::Cop::Style::AnnotationComment
end
module RuboCop::Cop::Duplication
  def consecutive_duplicates(collection); end
  def duplicates(collection); end
  def duplicates?(collection); end
  def grouped_duplicates(collection); end
end
module RuboCop::Cop::RangeHelp
  def column_offset_between(base_range, range); end
  def directions(side); end
  def effective_column(range); end
  def final_pos(src, pos, increment, continuations, newlines, whitespace); end
  def move_pos(src, pos, step, condition, regexp); end
  def move_pos_str(src, pos, step, condition, needle); end
  def range_between(start_pos, end_pos); end
  def range_by_whole_lines(range, include_final_newline: nil); end
  def range_with_surrounding_comma(range, side = nil); end
  def range_with_surrounding_space(range:, side: nil, newlines: nil, whitespace: nil, continuations: nil); end
  def source_range(source_buffer, line_number, column, length = nil); end
end
module RuboCop::Cop::Layout
end
module RuboCop::Cop::Layout::EmptyLinesAroundBody
  def check(node, body, adjusted_first_line: nil); end
  def check_beginning(style, first_line); end
  def check_both(style, first_line, last_line); end
  def check_deferred_empty_line(body); end
  def check_empty_lines_except_namespace(body, first_line, last_line); end
  def check_empty_lines_special(body, first_line, last_line); end
  def check_ending(style, last_line); end
  def check_line(style, line, msg); end
  def check_source(style, line_no, desc); end
  def constant_definition?(param0 = nil); end
  def deferred_message(node); end
  def empty_line_required?(param0 = nil); end
  def first_child_requires_empty_line?(body); end
  def first_empty_line_required_child(body); end
  def message(type, desc); end
  def namespace?(body, with_one_child: nil); end
  def previous_line_ignoring_comments(send_line); end
  def valid_body_style?(body); end
  extend RuboCop::AST::NodePattern::Macros
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::EmptyParameter
  def check(node); end
  def empty_arguments?(param0 = nil); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::EndKeywordAlignment
  def accept_end_kw_alignment?(end_loc); end
  def add_offense_for_misalignment(node, align_with); end
  def check_end_kw_alignment(node, align_ranges); end
  def check_end_kw_in_node(node); end
  def line_break_before_keyword?(whole_expression, rhs); end
  def matching_ranges(end_loc, align_ranges); end
  def start_line_range(node); end
  def style_parameter_name; end
  def variable_alignment?(whole_expression, rhs, end_alignment_style); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::EnforceSuperclass
  def on_class(node); end
  def on_send(node); end
  def self.included(base); end
end
module RuboCop::Cop::FirstElementLineBreak
  def check_children_line_break(node, children, start = nil); end
  def check_method_line_break(node, children); end
  def first_by_line(nodes); end
  def last_by_line(nodes); end
  def method_uses_parens?(node, limit); end
end
module RuboCop::Cop::FrozenStringLiteral
  def frozen_string_literal_comment_exists?; end
  def frozen_string_literal_specified?; end
  def frozen_string_literals_enabled?; end
  def leading_comment_lines; end
  def self.frozen_string_literal_comment_exists?; end
end
module RuboCop::Cop::HashAlignmentStyles
end
class RuboCop::Cop::HashAlignmentStyles::KeyAlignment
  def checkable_layout?(_node); end
  def deltas(first_pair, current_pair); end
  def deltas_for_first_pair(first_pair, _node); end
  def separator_delta(pair); end
  def value_delta(pair); end
end
module RuboCop::Cop::HashAlignmentStyles::ValueAlignment
  def checkable_layout?(node); end
  def deltas(first_pair, current_pair); end
  def separator_delta(first_pair, current_pair, key_delta); end
end
class RuboCop::Cop::HashAlignmentStyles::TableAlignment
  def deltas_for_first_pair(first_pair, node); end
  def hash_rocket_delta(first_pair, current_pair); end
  def initialize; end
  def key_delta(first_pair, current_pair); end
  def max_key_width; end
  def max_key_width=(arg0); end
  def value_delta(first_pair, current_pair); end
  include RuboCop::Cop::HashAlignmentStyles::ValueAlignment
end
class RuboCop::Cop::HashAlignmentStyles::SeparatorAlignment
  def deltas_for_first_pair(*_nodes); end
  def hash_rocket_delta(first_pair, current_pair); end
  def key_delta(first_pair, current_pair); end
  def value_delta(first_pair, current_pair); end
  include RuboCop::Cop::HashAlignmentStyles::ValueAlignment
end
module RuboCop::Cop::HashTransformMethod
  def array_receiver?(param0 = nil); end
  def execute_correction(corrector, node, correction); end
  def extract_captures(_match); end
  def handle_possible_offense(node, match, match_desc); end
  def new_method_name; end
  def on_bad_each_with_object(_node); end
  def on_bad_hash_brackets_map(_node); end
  def on_bad_map_to_h(_node); end
  def on_bad_to_h(_node); end
  def on_block(node); end
  def on_csend(node); end
  def on_send(node); end
  def prepare_correction(node); end
  extend RuboCop::AST::NodePattern::Macros
end
class RuboCop::Cop::HashTransformMethod::Captures < Struct
  def noop_transformation?; end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def transformation_uses_both_args?; end
  def transformed_argname; end
  def transformed_argname=(_); end
  def transforming_body_expr; end
  def transforming_body_expr=(_); end
  def unchanged_body_expr; end
  def unchanged_body_expr=(_); end
end
class RuboCop::Cop::HashTransformMethod::Autocorrection < Struct
  def block_node; end
  def block_node=(_); end
  def leading; end
  def leading=(_); end
  def match; end
  def match=(_); end
  def self.[](*arg0); end
  def self.from_each_with_object(node, match); end
  def self.from_hash_brackets_map(node, match); end
  def self.from_map_to_h(node, match); end
  def self.from_to_h(node, match); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def set_new_arg_name(transformed_argname, corrector); end
  def set_new_body_expression(transforming_body_expr, corrector); end
  def set_new_method_name(new_method_name, corrector); end
  def strip_prefix_and_suffix(node, corrector); end
  def trailing; end
  def trailing=(_); end
end
module RuboCop::Cop::IgnoredPattern
  def ignored_line?(line); end
  def ignored_patterns; end
  def matches_ignored_pattern?(line); end
end
module RuboCop::Cop::IgnoredMethods
  def deprecated_key; end
  def ignored_method?(name); end
  def ignored_methods; end
  def self.included(base); end
end
module RuboCop::Cop::IgnoredMethods::Config
  def deprecated_key; end
  def deprecated_key=(arg0); end
  def ignored_methods(**config); end
end
module RuboCop::Cop::IntegerNode
  def integer_part(node); end
end
module RuboCop::Cop::Interpolation
  def on_dstr(node); end
  def on_dsym(node); end
  def on_node_with_interpolations(node); end
  def on_regexp(node); end
  def on_xstr(node); end
end
module RuboCop::Cop::LineLengthHelp
  def allow_uri?; end
  def allowed_uri_position?(line, uri_range); end
  def directive_on_source_line?(line_index); end
  def find_excessive_uri_range(line); end
  def ignore_cop_directives?; end
  def indentation_difference(line); end
  def line_length(line); end
  def line_length_without_directive(line); end
  def match_uris(string); end
  def tab_indentation_width; end
  def uri_regexp; end
  def valid_uri?(uri_ish_string); end
end
module RuboCop::Cop::MatchRange
  def each_match_range(range, regex); end
  def match_range(range, match); end
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::Metrics
end
module RuboCop::Cop::Metrics::Utils
end
module RuboCop::Cop::Metrics::Utils::RepeatedCsendDiscount
  def discount_for_repeated_csend?(csend_node); end
  def reset_on_lvasgn(node); end
  def reset_repeated_csend; end
end
module RuboCop::Cop::Metrics::Utils::RepeatedAttributeDiscount
  def attribute_call?(param0 = nil); end
  def calculate_node(node); end
  def discount_repeated_attribute?(send_node); end
  def discount_repeated_attributes?; end
  def evaluate_branch_nodes(node); end
  def find_attributes(node, &block); end
  def initialize(node, discount_repeated_attributes: nil); end
  def root_node?(param0 = nil); end
  def setter_to_getter(node); end
  def update_repeated_attribute(node); end
  extend RuboCop::AST::NodePattern::Macros
  include RuboCop::AST::Sexp
end
module RuboCop::Cop::MethodComplexity
  def check_complexity(node, method_name); end
  def complexity(body); end
  def define_method?(param0 = nil); end
  def on_block(node); end
  def on_def(node); end
  def on_defs(node); end
  def self.included(base); end
  extend RuboCop::AST::NodePattern::Macros
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::ConfigurableMax
  include RuboCop::Cop::IgnoredMethods
  include RuboCop::Cop::Metrics::Utils::RepeatedCsendDiscount
end
module RuboCop::Cop::MethodPreference
  def default_cop_config; end
  def preferred_method(method); end
  def preferred_methods; end
end
module RuboCop::Cop::MinBodyLength
  def min_body_length; end
  def min_body_length?(node); end
end
module RuboCop::Cop::MultilineElementIndentation
  def base_column(left_brace, left_parenthesis); end
  def check_expected_style(styles); end
  def check_first(first, left_brace, left_parenthesis, offset); end
  def detected_styles(actual_column, offset, left_parenthesis, left_brace); end
  def detected_styles_for_column(column, left_parenthesis, left_brace); end
  def each_argument_node(node, type); end
  def incorrect_style_detected(styles, first, left_parenthesis); end
end
module RuboCop::Cop::MultilineElementLineBreaks
  def all_on_same_line?(nodes); end
  def check_line_breaks(_node, children); end
end
module RuboCop::Cop::MultilineExpressionIndentation
  def argument_in_method_call(node, kind); end
  def assignment_rhs(node); end
  def check(range, node, lhs, rhs); end
  def correct_indentation(node); end
  def disqualified_rhs?(candidate, ancestor); end
  def grouped_expression?(node); end
  def incorrect_style_detected(range, node, lhs, rhs); end
  def indentation(node); end
  def indented_keyword_expression(node); end
  def inside_arg_list_parentheses?(node, ancestor); end
  def keyword_message_tail(node); end
  def kw_node_with_special_indentation(node); end
  def left_hand_side(lhs); end
  def not_for_this_cop?(node); end
  def on_send(node); end
  def operation_description(node, rhs); end
  def part_of_assignment_rhs(node, candidate); end
  def part_of_block_body?(candidate, block_node); end
  def postfix_conditional?(node); end
  def regular_method_right_hand_side(send_node); end
  def right_hand_side(send_node); end
  def valid_method_rhs_candidate?(candidate, node); end
  def valid_rhs?(candidate, ancestor); end
  def valid_rhs_candidate?(candidate, node); end
  def within_node?(inner, outer); end
end
module RuboCop::Cop::MultilineLiteralBraceLayout
  def check(node); end
  def check_brace_layout(node); end
  def check_new_line(node); end
  def check_same_line(node); end
  def check_symmetrical(node); end
  def children(node); end
  def closing_brace_on_same_line?(node); end
  def empty_literal?(node); end
  def ignored_literal?(node); end
  def implicit_literal?(node); end
  def last_line_heredoc?(node, parent = nil); end
  def new_line_needed_before_closing_brace?(node); end
  def opening_brace_on_same_line?(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
module RuboCop::Cop::NegativeConditional
  def check_negative_conditional(node, message:, &block); end
  def empty_condition?(param0 = nil); end
  def single_negative?(param0 = nil); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::Heredoc
  def delimiter_string(node); end
  def heredoc_type(node); end
  def on_dstr(node); end
  def on_heredoc(_node); end
  def on_str(node); end
  def on_xstr(node); end
end
module RuboCop::Cop::NilMethods
  def nil_methods; end
  def other_stdlib_methods; end
  include RuboCop::Cop::AllowedMethods
end
module RuboCop::Cop::OnNormalIfUnless
  def on_if(node); end
end
module RuboCop::Cop::OrderedGemNode
  def case_insensitive_out_of_order?(string_a, string_b); end
  def consecutive_lines(previous, current); end
  def find_gem_name(gem_node); end
  def gem_canonical_name(name); end
  def gem_name(declaration_node); end
  def get_source_range(node, comments_as_separators); end
  def register_offense(previous, current); end
  def treat_comments_as_separators; end
end
module RuboCop::Cop::Parentheses
  def parens_required?(node); end
end
module RuboCop::Cop::PercentArray
  def allowed_bracket_array?(node); end
  def check_bracketed_array(node, literal_prefix); end
  def check_percent_array(node); end
  def comments_in_array?(node); end
  def invalid_percent_array_context?(node); end
  def message(_node); end
end
module RuboCop::Cop::PercentLiteral
  def begin_source(node); end
  def contents_range(node); end
  def percent_literal?(node); end
  def process(node, *types); end
  def type(node); end
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::PrecedingFollowingAlignment
  def aligned_assignment?(range, line); end
  def aligned_char?(range, line); end
  def aligned_comment_lines; end
  def aligned_identical?(range, line); end
  def aligned_operator?(range, line); end
  def aligned_token?(range, line); end
  def aligned_with_adjacent_line?(range, predicate); end
  def aligned_with_any_line?(line_ranges, range, indent = nil, &predicate); end
  def aligned_with_any_line_range?(line_ranges, range, &predicate); end
  def aligned_with_assignment(token, line_range); end
  def aligned_with_line?(line_nos, range, indent = nil); end
  def aligned_with_operator?(range); end
  def aligned_with_preceding_assignment(token); end
  def aligned_with_something?(range); end
  def aligned_with_subsequent_assignment(token); end
  def aligned_words?(range, line); end
  def allow_for_alignment?; end
  def assignment_lines; end
  def assignment_tokens; end
  def relevant_assignment_lines(line_range); end
  def remove_optarg_equals(asgn_tokens, processed_source); end
end
class RuboCop::Cop::PreferredDelimiters
  def config; end
  def delimiters; end
  def ensure_valid_preferred_delimiters; end
  def initialize(type, config, preferred_delimiters); end
  def preferred_delimiters; end
  def preferred_delimiters_config; end
  def type; end
end
module RuboCop::Cop::RationalLiteral
  def rational_literal?(param0 = nil); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::RescueNode
  def on_new_investigation; end
  def rescue_modifier?(node); end
  def rescued_exceptions(resbody); end
end
module RuboCop::Cop::SafeAssignment
  def empty_condition?(param0 = nil); end
  def safe_assignment?(param0 = nil); end
  def safe_assignment_allowed?; end
  def setter_method?(param0 = nil); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::SpaceAfterPunctuation
  def allowed_type?(token); end
  def each_missing_space(tokens); end
  def offset; end
  def on_new_investigation; end
  def space_forbidden_before_rcurly?; end
  def space_missing?(token1, token2); end
  def space_required_before?(token); end
end
module RuboCop::Cop::SpaceBeforePunctuation
  def each_missing_space(tokens); end
  def on_new_investigation; end
  def space_missing?(token1, token2); end
  def space_required_after?(token); end
  def space_required_after_lcurly?; end
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::SurroundingSpace
  def empty_brackets?(left_bracket_token, right_bracket_token); end
  def empty_offense(node, range, message, command); end
  def empty_offenses(node, left, right, message); end
  def extra_space?(token, side); end
  def no_space_between?(left_bracket_token, right_bracket_token); end
  def no_space_offenses(node, left_token, right_token, message, start_ok: nil, end_ok: nil); end
  def offending_empty_no_space?(config, left_token, right_token); end
  def offending_empty_space?(config, left_token, right_token); end
  def on_new_investigation; end
  def reposition(src, pos, step); end
  def side_space_range(range:, side:); end
  def space_between?(left_bracket_token, right_bracket_token); end
  def space_offense(node, token, side, message, command); end
  def space_offenses(node, left_token, right_token, message, start_ok: nil, end_ok: nil); end
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::StatementModifier
  def code_after(node); end
  def comment_disables_cop?(comment); end
  def first_line_comment(node); end
  def length_in_modifier_form(node); end
  def max_line_length; end
  def modifier_fits_on_single_line?(node); end
  def non_eligible_body?(body); end
  def non_eligible_condition?(condition); end
  def non_eligible_node?(node); end
  def parenthesize?(node); end
  def single_line_as_modifier?(node); end
  def to_modifier_form(node); end
  include RuboCop::Cop::LineLengthHelp
end
module RuboCop::Cop::StringHelp
  def inside_interpolation?(node); end
  def on_regexp(node); end
  def on_str(node); end
end
module RuboCop::Cop::StringLiteralsHelp
  def wrong_quotes?(node); end
  include RuboCop::Cop::StringHelp
end
module RuboCop::Cop::TargetRubyVersion
  def minimum_target_ruby_version(version); end
  def required_minimum_ruby_version; end
  def support_target_ruby_version?(version); end
end
module RuboCop::Cop::TrailingBody
  def body_on_first_line?(node, body); end
  def first_part_of(body); end
  def trailing_body?(node); end
end
module RuboCop::Cop::TrailingComma
  def allowed_multiline_argument?(node); end
  def any_heredoc?(items); end
  def autocorrect_range(item); end
  def avoid_comma(kind, comma_begin_pos, extra_info); end
  def brackets?(node); end
  def check(node, items, kind, begin_pos, end_pos); end
  def check_comma(node, kind, comma_pos); end
  def check_literal(node, kind); end
  def comma_offset(items, range); end
  def elements(node); end
  def extra_avoid_comma_info; end
  def heredoc?(node); end
  def heredoc_send?(node); end
  def inside_comment?(range, comma_offset); end
  def method_name_and_arguments_on_same_line?(node); end
  def multiline?(node); end
  def no_elements_on_same_line?(node); end
  def on_same_line?(range1, range2); end
  def put_comma(items, kind); end
  def should_have_comma?(style, node); end
  def style_parameter_name; end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::UncommunicativeName
  def allow_nums; end
  def allowed_names; end
  def arg_range(arg, length); end
  def case_offense(node, range); end
  def check(node, args); end
  def ends_with_num?(name); end
  def forbidden_names; end
  def forbidden_offense(node, range, name); end
  def issue_offenses(node, range, name); end
  def length_offense(node, range); end
  def long_enough?(name); end
  def min_length; end
  def name_type(node); end
  def num_offense(node, range); end
  def uppercase?(name); end
end
module RuboCop::Cop::Lint
end
module RuboCop::Cop::Lint::UnusedArgument
  def after_leaving_scope(scope, _variable_table); end
  def check_argument(variable); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::VisibilityHelp
  def find_visibility_end(node); end
  def find_visibility_start(node); end
  def node_visibility(node); end
  def visibility_block?(param0 = nil); end
  extend RuboCop::AST::NodePattern::Macros
end
module RuboCop::Cop::CommentsHelp
  def begin_pos_with_comment(node); end
  def buffer; end
  def end_position_for(node); end
  def source_range_with_comment(node); end
  def start_line_position(node); end
  include RuboCop::Cop::VisibilityHelp
end
module RuboCop::Cop::Utils
end
class RuboCop::Cop::Utils::FormatString
  def format_sequences; end
  def initialize(string); end
  def max_digit_dollar_num; end
  def mixed_formats?; end
  def named_interpolation?; end
  def parse; end
  def valid?; end
end
class RuboCop::Cop::Utils::FormatString::FormatSequence
  def annotated?; end
  def arity; end
  def begin_pos; end
  def end_pos; end
  def flags; end
  def initialize(match); end
  def max_digit_dollar_num; end
  def name; end
  def percent?; end
  def precision; end
  def style; end
  def template?; end
  def type; end
  def width; end
end
module RuboCop::Cop::Migration
end
class RuboCop::Cop::Migration::DepartmentName < RuboCop::Cop::Base
  def check_cop_name(name, comment, offset); end
  def contain_unexpected_character_for_department_name?(name); end
  def disable_comment_offset; end
  def on_new_investigation; end
  def qualified_legacy_cop_name(cop_name); end
  def valid_content_token?(content_token); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::AlignmentCorrector
  def self.align_end(corrector, processed_source, node, align_to); end
  def self.alignment_column(align_to); end
  def self.autocorrect_line(corrector, line_begin_pos, expr, column_delta, taboo_ranges); end
  def self.block_comment_within?(expr); end
  def self.calculate_range(expr, line_begin_pos, column_delta); end
  def self.correct(processed_source, node, column_delta); end
  def self.delimited_string_literal?(node); end
  def self.each_line(expr); end
  def self.inside_string_range(node); end
  def self.inside_string_ranges(node); end
  def self.processed_source; end
  def self.remove(range, corrector); end
  def self.whitespace_range(node); end
  extend RuboCop::Cop::Alignment
  extend RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::ConditionCorrector
  def self.correct_negative_condition(corrector, node); end
  def self.negated_condition(node); end
end
class RuboCop::Cop::EachToForCorrector
  def argument_node; end
  def block_node; end
  def call(corrector); end
  def collection_node; end
  def correction; end
  def initialize(block_node); end
  def offending_range; end
  def replacement_range(end_pos); end
  extend RuboCop::AST::NodePattern::Macros
end
class RuboCop::Cop::EmptyLineCorrector
  def self.correct(corrector, node); end
  def self.insert_before(corrector, node); end
end
class RuboCop::Cop::ForToEachCorrector
  def call(corrector); end
  def collection_end; end
  def collection_node; end
  def collection_source; end
  def correction; end
  def end_position; end
  def for_node; end
  def initialize(for_node); end
  def keyword_begin; end
  def offending_range; end
  def replacement_range(end_pos); end
  def requires_parentheses?; end
  def variable_node; end
  extend RuboCop::AST::NodePattern::Macros
end
class RuboCop::Cop::LambdaLiteralToMethodCorrector
  def arg_to_unparenthesized_call?; end
  def arguments; end
  def arguments_begin_pos; end
  def arguments_end_pos; end
  def block_begin; end
  def block_end; end
  def block_node; end
  def call(corrector); end
  def initialize(block_node); end
  def insert_arguments(corrector); end
  def insert_separating_space(corrector); end
  def lambda_arg_string; end
  def method; end
  def needs_separating_space?; end
  def remove_arguments(corrector); end
  def remove_leading_whitespace(corrector); end
  def remove_trailing_whitespace(corrector); end
  def remove_unparenthesized_whitespace(corrector); end
  def replace_delimiters(corrector); end
  def replace_selector(corrector); end
  def selector_end; end
  def separating_space?; end
end
class RuboCop::Cop::LineBreakCorrector
  def self.break_line_before(range:, node:, corrector:, configured_width:, indent_steps: nil); end
  def self.correct_trailing_body(configured_width:, corrector:, node:, processed_source:); end
  def self.move_comment(eol_comment:, node:, corrector:); end
  def self.processed_source; end
  def self.remove_semicolon(node, corrector); end
  def self.semicolon(node); end
  extend RuboCop::Cop::Alignment
  extend RuboCop::Cop::TrailingBody
  extend RuboCop::Cop::Util
end
class RuboCop::Cop::MultilineLiteralBraceCorrector
  def call; end
  def content_if_comment_present(corrector, node); end
  def correct_next_line_brace(corrector); end
  def correct_same_line_brace(corrector); end
  def corrector; end
  def initialize(corrector, node, processed_source); end
  def last_element_range_with_trailing_comma(node); end
  def last_element_trailing_comma_range(node); end
  def node; end
  def processed_source; end
  def remove_trailing_content_of_comment(corrector, range); end
  def select_content_to_be_inserted_after_last_element(corrector, node); end
  def self.correct(corrector, node, processed_source); end
  include RuboCop::Cop::MultilineLiteralBraceLayout
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::OrderedGemCorrector
  def self.comments_as_separators; end
  def self.correct(processed_source, node, previous_declaration, comments_as_separators); end
  def self.declaration_with_comment(node); end
  def self.processed_source; end
  def self.swap_range(corrector, range1, range2); end
  extend RuboCop::Cop::OrderedGemNode
end
class RuboCop::Cop::ParenthesesCorrector
  def self.correct(corrector, node); end
  def self.next_char_is_question_mark?(node); end
  def self.ternary_condition?(node); end
end
class RuboCop::Cop::PercentLiteralCorrector
  def autocorrect_multiline_words(node, escape, delimiters); end
  def autocorrect_words(node, escape, delimiters); end
  def config; end
  def correct(corrector, node, char); end
  def delimiters_for(type); end
  def end_content(source); end
  def escape_words?(node); end
  def first_line?(node, previous_line_num); end
  def fix_escaped_content(word_node, escape, delimiters); end
  def initialize(config, preferred_delimiters); end
  def line_breaks(node, source, previous_line_num, base_line_num, node_indx); end
  def new_contents(node, escape, delimiters); end
  def preferred_delimiters; end
  def process_lines(node, previous_line_num, base_line_num, source_in_lines); end
  def process_multiline_words(node, escape, delimiters); end
  def substitute_escaped_delimiters(content, delimiters); end
  def wrap_contents(corrector, node, contents, char, delimiters); end
  include RuboCop::Cop::Util
end
class RuboCop::Cop::PunctuationCorrector
  def self.add_space(corrector, token); end
  def self.remove_space(corrector, space_before); end
  def self.swap_comma(corrector, range); end
end
class RuboCop::Cop::SpaceCorrector
  def self.add_space(processed_source, corrector, left_token, right_token); end
  def self.empty_corrections(processed_source, corrector, empty_config, left_token, right_token); end
  def self.processed_source; end
  def self.remove_space(processed_source, corrector, left_token, right_token); end
  extend RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::StringLiteralCorrector
  def self.correct(corrector, node, style); end
  extend RuboCop::Cop::Util
end
class RuboCop::Cop::UnusedArgCorrector
  def self.correct(corrector, processed_source, node); end
  def self.correct_for_blockarg_type(corrector, node); end
  def self.processed_source; end
  extend RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::Bundler
end
class RuboCop::Cop::Bundler::DuplicatedGem < RuboCop::Cop::Base
  def conditional_declaration?(nodes); end
  def duplicated_gem_nodes; end
  def gem_declarations(param0); end
  def on_new_investigation; end
  def register_offense(node, gem_name, line_of_first_occurrence); end
  def within_conditional?(node, conditional_node); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Bundler::GemComment < RuboCop::Cop::Base
  def checked_options_present?(node); end
  def commented?(node); end
  def commented_any_descendant?(node); end
  def contains_checked_options?(node); end
  def gem_declaration?(param0 = nil); end
  def gem_options(node); end
  def ignored_gem?(node); end
  def on_send(node); end
  def precede?(node1, node2); end
  def preceding_comment?(node1, node2); end
  def preceding_lines(node); end
  def version_specified_gem?(node); end
  include RuboCop::Cop::DefNode
end
class RuboCop::Cop::Bundler::InsecureProtocolSource < RuboCop::Cop::Base
  def insecure_protocol_source?(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Bundler::OrderedGems < RuboCop::Cop::Cop
  def autocorrect(node); end
  def gem_declarations(param0); end
  def investigate(processed_source); end
  def previous_declaration(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::OrderedGemNode
end
module RuboCop::Cop::Gemspec
end
class RuboCop::Cop::Gemspec::DuplicatedAssignment < RuboCop::Cop::Base
  def assignment_method?(method_name); end
  def assignment_method_declarations(param0); end
  def duplicated_assignment_method_nodes; end
  def gem_specification(param0); end
  def match_block_variable_name?(receiver_name); end
  def on_new_investigation; end
  def register_offense(node, assignment, line_of_first_occurrence); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Gemspec::OrderedDependencies < RuboCop::Cop::Cop
  def autocorrect(node); end
  def dependency_declarations(param0); end
  def get_dependency_name(node); end
  def investigate(processed_source); end
  def previous_declaration(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::OrderedGemNode
end
class RuboCop::Cop::Gemspec::RequiredRubyVersion < RuboCop::Cop::Base
  def defined_ruby_version(param0 = nil); end
  def extract_ruby_version(required_ruby_version); end
  def not_equal_message(required_ruby_version, target_ruby_version); end
  def on_new_investigation; end
  def required_ruby_version(param0); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Gemspec::RubyVersionGlobalsUsage < RuboCop::Cop::Base
  def gem_spec_with_ruby_version?(node); end
  def gem_specification?(param0); end
  def on_const(node); end
  def ruby_version?(param0 = nil); end
end
class RuboCop::Cop::Layout::AccessModifierIndentation < RuboCop::Cop::Cop
  def autocorrect(node); end
  def check_body(body, node); end
  def check_modifier(send_node, end_range); end
  def expected_indent_offset; end
  def message(node); end
  def on_block(node); end
  def on_class(node); end
  def on_module(node); end
  def on_sclass(node); end
  def unexpected_indent_offset; end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::ArgumentAlignment < RuboCop::Cop::Cop
  def autocorrect(node); end
  def base_column(node, args); end
  def fixed_indentation?; end
  def message(_node); end
  def on_csend(node); end
  def on_send(node); end
  def target_method_lineno(node); end
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Layout::ArrayAlignment < RuboCop::Cop::Cop
  def autocorrect(node); end
  def base_column(node, args); end
  def fixed_indentation?; end
  def message(_node); end
  def on_array(node); end
  def target_method_lineno(node); end
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Layout::AssignmentIndentation < RuboCop::Cop::Cop
  def autocorrect(node); end
  def check_assignment(node, rhs); end
  def leftmost_multiple_assignment(node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::CheckAssignment
end
class RuboCop::Cop::Layout::BeginEndAlignment < RuboCop::Cop::Base
  def alignment_node(node); end
  def autocorrect(corrector, node); end
  def check_begin_alignment(node); end
  def on_kwbegin(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::EndKeywordAlignment
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::BlockAlignment < RuboCop::Cop::Base
  def add_space_before(corrector, loc, delta); end
  def alt_start_msg(start_loc, source_line_column); end
  def autocorrect(corrector, node); end
  def block_end_align_target(node); end
  def block_end_align_target?(param0 = nil, param1); end
  def check_block_alignment(start_node, block_node); end
  def compute_do_source_line_column(node, end_loc); end
  def compute_start_col(ancestor_node, node); end
  def disqualified_parent?(parent, node); end
  def end_align_target?(node, parent); end
  def format_message(start_loc, end_loc, do_source_line_column, error_source_line_column); end
  def format_source_line_column(source_line_column); end
  def loc_to_source_line_column(loc); end
  def on_block(node); end
  def register_offense(block_node, start_loc, end_loc, do_source_line_column); end
  def remove_space_before(corrector, end_pos, delta); end
  def start_for_block_node(block_node); end
  def style_parameter_name; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::BlockEndNewline < RuboCop::Cop::Cop
  def autocorrect(node); end
  def delimiter_range(node); end
  def message(node); end
  def on_block(node); end
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Layout::CaseIndentation < RuboCop::Cop::Base
  def base_column(case_node, base); end
  def check_when(when_node); end
  def detect_incorrect_style(when_node); end
  def incorrect_style(when_node); end
  def indent_one_step?; end
  def indentation_width; end
  def on_case(case_node); end
  def replacement(node); end
  def whitespace_range(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::ClassStructure < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def begin_pos_with_comment(node); end
  def buffer; end
  def categories; end
  def class_elements(class_node); end
  def classify(node); end
  def dynamic_constant?(param0 = nil); end
  def end_position_for(node); end
  def expected_order; end
  def find_category(node); end
  def find_heredoc(node); end
  def humanize_node(node); end
  def ignore?(classification); end
  def ignore_for_autocorrect?(node, sibling); end
  def on_class(class_node); end
  def source_range_with_comment(node); end
  def start_line_position(node); end
  def walk_over_nested_class_definition(class_node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::VisibilityHelp
end
class RuboCop::Cop::Layout::ClosingHeredocIndentation < RuboCop::Cop::Base
  def argument_indentation_correct?(node); end
  def closing_indentation(node); end
  def find_node_used_heredoc_argument(node); end
  def heredoc_closing(node); end
  def heredoc_opening(node); end
  def indent_level(source_line); end
  def indented_end(node); end
  def message(node); end
  def on_heredoc(node); end
  def opening_indentation(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Heredoc
end
class RuboCop::Cop::Layout::ClosingParenthesisIndentation < RuboCop::Cop::Cop
  def all_elements_aligned?(elements); end
  def autocorrect(node); end
  def check(node, elements); end
  def check_for_elements(node, elements); end
  def check_for_no_elements(node); end
  def correct_column_candidates(node, left_paren); end
  def expected_column(left_paren, elements); end
  def first_argument_line(elements); end
  def indentation_width; end
  def line_break_after_left_paren?(left_paren, elements); end
  def message(correct_column, left_paren, right_paren); end
  def on_begin(node); end
  def on_csend(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Layout::CommentIndentation < RuboCop::Cop::Cop
  def autocorrect(comment); end
  def autocorrect_one(comment); end
  def autocorrect_preceding_comments(comment); end
  def check(comment); end
  def correct_indentation(next_line); end
  def investigate(processed_source); end
  def less_indented?(line); end
  def line_after_comment(comment); end
  def message(column, correct_comment_indentation); end
  def own_line_comment?(comment); end
  def should_correct?(preceding_comment, reference_comment); end
  def two_alternatives?(line); end
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Layout::ConditionPosition < RuboCop::Cop::Base
  def check(node); end
  def message(condition); end
  def on_if(node); end
  def on_until(node); end
  def on_while(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::DefEndAlignment < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::EndKeywordAlignment
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::DotPosition < RuboCop::Cop::Base
  def ampersand_dot?(node); end
  def autocorrect(corrector, dot, node); end
  def correct_dot_position_style?(dot_line, selector_line); end
  def line_between?(first_line, second_line); end
  def message(dot); end
  def on_csend(node); end
  def on_send(node); end
  def proper_dot_position?(node); end
  def selector_range(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Layout::ElseAlignment < RuboCop::Cop::Cop
  def assignment_node(node); end
  def autocorrect(node); end
  def base_for_method_definition(node); end
  def base_range_of_if(node, base); end
  def base_range_of_rescue(node); end
  def check_alignment(base_range, else_range); end
  def check_assignment(node, rhs); end
  def check_nested(node, base); end
  def on_case(node); end
  def on_case_match(node); end
  def on_if(node, base = nil); end
  def on_rescue(node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::CheckAssignment
  include RuboCop::Cop::EndKeywordAlignment
end
class RuboCop::Cop::Layout::EmptyComment < RuboCop::Cop::Base
  def allow_border_comment?; end
  def allow_margin_comment?; end
  def autocorrect(corrector, node); end
  def comment_text(comment); end
  def concat_consecutive_comments(comments); end
  def current_token(comment); end
  def empty_comment_only?(comment_text); end
  def investigate(comments); end
  def on_new_investigation; end
  def previous_token(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EmptyLineAfterGuardClause < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def contains_guard_clause?(node); end
  def correct_style?(node); end
  def heredoc?(node); end
  def heredoc_line(node, heredoc_node); end
  def last_argument_is_heredoc?(node); end
  def last_heredoc_argument(node); end
  def next_line_empty?(line); end
  def next_line_rescue_or_ensure?(node); end
  def next_sibling_empty_or_guard_clause?(node); end
  def next_sibling_parent_empty_or_else?(node); end
  def offense_location(node); end
  def on_if(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EmptyLineAfterMagicComment < RuboCop::Cop::Base
  def last_magic_comment(source); end
  def offending_range(last_magic_comment); end
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EmptyLineAfterMultilineCondition < RuboCop::Cop::Base
  def autocorrect(node); end
  def check_condition(condition); end
  def multiline_rescue_exceptions?(exception_nodes); end
  def multiline_when_condition?(when_node); end
  def next_line_empty?(line); end
  def on_case(node); end
  def on_if(node); end
  def on_rescue(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_while(node); end
  def on_while_post(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EmptyLineBetweenDefs < RuboCop::Cop::Base
  def autocorrect(corrector, prev_def, node); end
  def autocorrect_insert_lines(corrector, newline_pos, count); end
  def autocorrect_remove_lines(corrector, newline_pos, count); end
  def blank_lines_between?(first_def_node, second_def_node); end
  def blank_lines_count_between(first_def_node, second_def_node); end
  def candidate?(node); end
  def check_defs(nodes); end
  def class_candidate?(node); end
  def def_end(node); end
  def def_start(node); end
  def end_loc(node); end
  def lines_between_defs(first_def_node, second_def_node); end
  def maximum_empty_lines; end
  def message(node); end
  def method_candidate?(node); end
  def minimum_empty_lines; end
  def module_candidate?(node); end
  def multiple_blank_lines_groups?(first_def_node, second_def_node); end
  def on_begin(node); end
  def self.autocorrect_incompatible_with; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EmptyLinesAroundAccessModifier < RuboCop::Cop::Base
  def allowed_only_before_style?(node); end
  def block_start?(line); end
  def body_end?(line); end
  def class_def?(line); end
  def correct_next_line_if_denied_style(corrector, node, line); end
  def empty_lines_around?(node); end
  def expected_empty_lines?(node); end
  def initialize(config = nil, options = nil); end
  def message(node); end
  def message_for_around_style(node); end
  def message_for_only_before_style(node); end
  def next_empty_line_range(node); end
  def next_line_empty?(last_send_line); end
  def on_block(node); end
  def on_class(node); end
  def on_module(node); end
  def on_sclass(node); end
  def on_send(node); end
  def previous_line_empty?(send_line); end
  def previous_line_ignoring_comments(processed_source, send_line); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EmptyLinesAroundArguments < RuboCop::Cop::Base
  def empty_lines(node); end
  def extra_lines(node); end
  def inner_lines(node); end
  def line_numbers(node); end
  def on_csend(node); end
  def on_send(node); end
  def outer_lines(node); end
  def processed_lines(node); end
  def receiver_and_method_call_on_different_lines?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EmptyLinesAroundAttributeAccessor < RuboCop::Cop::Base
  def allow_alias?(node); end
  def allow_alias_syntax?; end
  def attribute_or_allowed_method?(node); end
  def next_line_empty?(line); end
  def next_line_node(node); end
  def on_send(node); end
  def require_empty_line?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::AllowedMethods
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EmptyLinesAroundBeginBody < RuboCop::Cop::Base
  def on_kwbegin(node); end
  def style; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Layout::EmptyLinesAroundBody
end
class RuboCop::Cop::Layout::EmptyLinesAroundBlockBody < RuboCop::Cop::Base
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Layout::EmptyLinesAroundBody
end
class RuboCop::Cop::Layout::EmptyLinesAroundClassBody < RuboCop::Cop::Base
  def on_class(node); end
  def on_sclass(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Layout::EmptyLinesAroundBody
end
class RuboCop::Cop::Layout::EmptyLinesAroundExceptionHandlingKeywords < RuboCop::Cop::Base
  def check_body(node); end
  def keyword_locations(node); end
  def keyword_locations_in_ensure(node); end
  def keyword_locations_in_rescue(node); end
  def message(location, keyword); end
  def on_def(node); end
  def on_defs(node); end
  def on_kwbegin(node); end
  def style; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Layout::EmptyLinesAroundBody
end
class RuboCop::Cop::Layout::EmptyLinesAroundMethodBody < RuboCop::Cop::Base
  def on_def(node); end
  def on_defs(node); end
  def style; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Layout::EmptyLinesAroundBody
end
class RuboCop::Cop::Layout::EmptyLinesAroundModuleBody < RuboCop::Cop::Base
  def on_module(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Layout::EmptyLinesAroundBody
end
class RuboCop::Cop::Layout::EmptyLines < RuboCop::Cop::Base
  def each_extra_empty_line(lines); end
  def exceeds_line_offset?(line_diff); end
  def on_new_investigation; end
  def previous_and_current_lines_empty?(line); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EndAlignment < RuboCop::Cop::Base
  def alignment_node(node); end
  def alignment_node_for_variable_style(node); end
  def asgn_variable_align_with(outer_node, inner_node); end
  def autocorrect(corrector, node); end
  def check_asgn_alignment(outer_node, inner_node); end
  def check_assignment(node, rhs); end
  def check_other_alignment(node); end
  def on_case(node); end
  def on_class(node); end
  def on_if(node); end
  def on_module(node); end
  def on_until(node); end
  def on_while(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::CheckAssignment
  include RuboCop::Cop::EndKeywordAlignment
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::EndOfLine < RuboCop::Cop::Base
  def last_line(processed_source); end
  def offense_message(line); end
  def on_new_investigation; end
  def unimportant_missing_cr?(index, last_line, line); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::ExtraSpacing < RuboCop::Cop::Base
  def align_column(asgn_token); end
  def align_equal_sign(corrector, token, align_to); end
  def align_equal_signs(range, corrector); end
  def aligned_locations(locs); end
  def aligned_tok?(token); end
  def all_relevant_assignment_lines(line_number); end
  def allow_for_trailing_comments?; end
  def check_assignment(token); end
  def check_other(token1, token2, ast); end
  def check_tokens(ast, token1, token2); end
  def extra_space_range(token1, token2); end
  def force_equal_sign_alignment?; end
  def ignored_range?(ast, start_pos); end
  def ignored_ranges(ast); end
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::PrecedingFollowingAlignment
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::FirstArgumentIndentation < RuboCop::Cop::Cop
  def autocorrect(node); end
  def base_indentation(node); end
  def base_range(send_node, arg_node); end
  def column_of(range); end
  def comment_lines; end
  def eligible_method_call?(param0 = nil); end
  def message(arg_node); end
  def on_csend(node); end
  def on_new_investigation; end
  def on_send(node); end
  def previous_code_line(line_number); end
  def special_inner_call_indentation?(node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::FirstArrayElementIndentation < RuboCop::Cop::Cop
  def autocorrect(node); end
  def base_description(left_parenthesis); end
  def brace_alignment_style; end
  def check(array_node, left_parenthesis); end
  def check_right_bracket(right_bracket, left_bracket, left_parenthesis); end
  def message(base_description); end
  def msg(left_parenthesis); end
  def on_array(node); end
  def on_csend(node); end
  def on_send(node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::MultilineElementIndentation
end
class RuboCop::Cop::Layout::FirstArrayElementLineBreak < RuboCop::Cop::Base
  def assignment_on_same_line?(node); end
  def on_array(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::FirstElementLineBreak
end
class RuboCop::Cop::Layout::FirstHashElementIndentation < RuboCop::Cop::Cop
  def autocorrect(node); end
  def base_description(left_parenthesis); end
  def brace_alignment_style; end
  def check(hash_node, left_parenthesis); end
  def check_based_on_longest_key(hash_node, left_brace, left_parenthesis); end
  def check_right_brace(right_brace, left_brace, left_parenthesis); end
  def message(base_description); end
  def on_csend(node); end
  def on_hash(node); end
  def on_send(node); end
  def separator_style?(first_pair); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::MultilineElementIndentation
end
class RuboCop::Cop::Layout::FirstHashElementLineBreak < RuboCop::Cop::Base
  def on_hash(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::FirstElementLineBreak
end
class RuboCop::Cop::Layout::FirstMethodArgumentLineBreak < RuboCop::Cop::Base
  def on_csend(node); end
  def on_send(node); end
  def on_super(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::FirstElementLineBreak
end
class RuboCop::Cop::Layout::FirstMethodParameterLineBreak < RuboCop::Cop::Base
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::FirstElementLineBreak
end
class RuboCop::Cop::Layout::FirstParameterIndentation < RuboCop::Cop::Cop
  def autocorrect(node); end
  def base_description(_); end
  def brace_alignment_style; end
  def check(def_node); end
  def message(base_description); end
  def on_def(node); end
  def on_defs(node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::MultilineElementIndentation
end
class RuboCop::Cop::Layout::HashAlignment < RuboCop::Cop::Base
  def add_offences; end
  def adjust(corrector, delta, range); end
  def alignment_for(pair); end
  def alignment_for_colons; end
  def alignment_for_hash_rockets; end
  def check_delta(delta, node:, alignment:); end
  def check_pairs(node); end
  def column_deltas; end
  def column_deltas=(arg0); end
  def correct_key_value(corrector, delta, key, value, separator); end
  def correct_no_value(corrector, key_delta, key); end
  def correct_node(corrector, node, delta); end
  def double_splat?(node); end
  def good_alignment?(column_deltas); end
  def ignore_hash_argument?(node); end
  def new_alignment(key); end
  def offences_by; end
  def offences_by=(arg0); end
  def on_hash(node); end
  def on_send(node); end
  def on_super(node); end
  def on_yield(node); end
  def reset!; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::HashAlignmentStyles
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::HeredocArgumentClosingParenthesis < RuboCop::Cop::Base
  def add_correct_closing_paren(node, corrector); end
  def add_correct_external_trailing_comma(node, corrector); end
  def autocorrect(corrector, node); end
  def exist_argument_between_heredoc_end_and_closing_parentheses?(node); end
  def external_trailing_comma?(node); end
  def external_trailing_comma_offset_from_loc_end(node); end
  def extract_heredoc(node); end
  def extract_heredoc_argument(node); end
  def find_most_bottom_of_heredoc_end(arguments); end
  def fix_closing_parenthesis(node, corrector); end
  def fix_external_trailing_comma(node, corrector); end
  def heredoc_node?(node); end
  def incorrect_parenthesis_removal_begin(node); end
  def incorrect_parenthesis_removal_end(node); end
  def internal_trailing_comma?(node); end
  def internal_trailing_comma_offset_from_last_arg(node); end
  def on_send(node); end
  def outermost_send_on_same_line(heredoc); end
  def remove_incorrect_closing_paren(node, corrector); end
  def remove_incorrect_external_trailing_comma(node, corrector); end
  def remove_internal_trailing_comma(node, corrector); end
  def safe_to_remove_line_containing_closing_paren?(node); end
  def self.autocorrect_incompatible_with; end
  def send_missing_closing_parens?(parent, child, heredoc); end
  def single_line_send_with_heredoc_receiver?(node); end
  def space?(pos); end
  def subsequent_closing_parentheses_in_same_line?(outermost_send); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::HeredocIndentation < RuboCop::Cop::Base
  def adjust_minus(corrector, node); end
  def adjust_squiggly(corrector, node); end
  def base_indent_level(node); end
  def heredoc_body(node); end
  def heredoc_end(node); end
  def heredoc_indent_type(node); end
  def indent_level(str); end
  def indentation_width; end
  def indented_body(node); end
  def indented_end(node); end
  def line_too_long?(node); end
  def longest_line(lines); end
  def max_line_length; end
  def message(heredoc_indent_type); end
  def on_heredoc(node); end
  def register_offense(node, heredoc_indent_type); end
  def type_message(indentation_width, current_indent_type); end
  def unlimited_heredoc_length?; end
  def width_message(indentation_width); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Heredoc
end
class RuboCop::Cop::Layout::IndentationConsistency < RuboCop::Cop::Cop
  def autocorrect(node); end
  def bare_access_modifier?(node); end
  def base_column_for_normal_style(node); end
  def check(node); end
  def check_indented_internal_methods_style(node); end
  def check_normal_style(node); end
  def on_begin(node); end
  def on_kwbegin(node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Layout::IndentationStyle < RuboCop::Cop::Cop
  def autocorrect(range); end
  def autocorrect_lambda_for_spaces(range); end
  def autocorrect_lambda_for_tabs(range); end
  def find_offence(line); end
  def in_string_literal?(ranges, tabs_range); end
  def investigate(processed_source); end
  def message(_node); end
  def string_literal_ranges(ast); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::IndentationWidth < RuboCop::Cop::Cop
  def access_modifier?(param0 = nil); end
  def access_modifier_indentation_style; end
  def autocorrect(node); end
  def check_assignment(node, rhs); end
  def check_if(node, body, else_clause, base_loc); end
  def check_indentation(base_loc, body_node, style = nil); end
  def check_members(base, members); end
  def check_members_for_indented_internal_methods_style(members); end
  def check_members_for_normal_style(base, members); end
  def configured_indentation_width; end
  def each_member(members); end
  def indentation_consistency_style; end
  def indentation_to_check?(base_loc, body_node); end
  def indented_internal_methods_style?; end
  def leftmost_modifier_of(node); end
  def message(configured_indentation_width, indentation, name); end
  def offending_range(body_node, indentation); end
  def offense(body_node, indentation, style); end
  def on_block(node); end
  def on_case(case_node); end
  def on_class(node); end
  def on_csend(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_ensure(node); end
  def on_for(node); end
  def on_if(node, base = nil); end
  def on_kwbegin(node); end
  def on_module(node); end
  def on_resbody(node); end
  def on_rescue(node); end
  def on_sclass(node); end
  def on_send(node); end
  def on_until(node, base = nil); end
  def on_while(node, base = nil); end
  def other_offense_in_same_range?(node); end
  def select_check_member(member); end
  def skip_check?(base_loc, body_node); end
  def special_modifier?(node); end
  def starts_with_access_modifier?(body_node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::CheckAssignment
  include RuboCop::Cop::EndKeywordAlignment
  include RuboCop::Cop::IgnoredPattern
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::InitialIndentation < RuboCop::Cop::Base
  def first_token; end
  def on_new_investigation; end
  def space_before(token); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::LeadingCommentSpace < RuboCop::Cop::Base
  def allow_doxygen_comment?; end
  def allow_gemfile_ruby_comment?; end
  def allowed_on_first_line?(comment); end
  def doxygen_comment_style?(comment); end
  def gemfile?; end
  def gemfile_ruby_comment?(comment); end
  def hash_mark(expr); end
  def on_new_investigation; end
  def rackup_config_file?; end
  def rackup_options?(comment); end
  def ruby_comment_in_gemfile?(comment); end
  def shebang?(comment); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::LeadingEmptyLines < RuboCop::Cop::Base
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Layout::LineLength < RuboCop::Cop::Base
  def allow_heredoc?; end
  def allowed_heredoc; end
  def breakable_block_range(block_node); end
  def breakable_range; end
  def breakable_range=(arg0); end
  def breakable_range_after_semicolon(semicolon_token); end
  def breakable_range_by_line_index; end
  def check_directive_line(line, line_index); end
  def check_for_breakable_block(block_node); end
  def check_for_breakable_node(node); end
  def check_for_breakable_semicolons(processed_source); end
  def check_line(line, line_index); end
  def check_uri_line(line, line_index); end
  def excess_range(uri_range, line, line_index); end
  def extract_heredocs(ast); end
  def heredocs; end
  def highlight_start(line); end
  def ignored_line?(line, line_index); end
  def line_in_heredoc?(line_number); end
  def line_in_permitted_heredoc?(line_number); end
  def max; end
  def on_array(node); end
  def on_block(node); end
  def on_hash(node); end
  def on_investigation_end; end
  def on_new_investigation; end
  def on_potential_breakable_node(node); end
  def on_send(node); end
  def register_offense(loc, line, line_index); end
  def shebang?(line, line_index); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::CheckLineBreakable
  include RuboCop::Cop::ConfigurableMax
  include RuboCop::Cop::IgnoredPattern
  include RuboCop::Cop::LineLengthHelp
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::MultilineArrayBraceLayout < RuboCop::Cop::Base
  def on_array(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MultilineLiteralBraceLayout
end
class RuboCop::Cop::Layout::MultilineArrayLineBreaks < RuboCop::Cop::Base
  def on_array(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MultilineElementLineBreaks
end
class RuboCop::Cop::Layout::MultilineAssignmentLayout < RuboCop::Cop::Base
  def check_assignment(node, rhs); end
  def check_by_enforced_style(node, rhs); end
  def check_new_line_offense(node, rhs); end
  def check_same_line_offense(node, rhs); end
  def supported_types; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::CheckAssignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::MultilineBlockLayout < RuboCop::Cop::Base
  def add_offense_for_expression(node, expr, msg); end
  def args_on_beginning_line?(node); end
  def autocorrect(corrector, node); end
  def autocorrect_arguments(corrector, node); end
  def autocorrect_body(corrector, node, block_body); end
  def block_arg_string(node, args); end
  def characters_needed_for_space_and_pipes(node); end
  def include_trailing_comma?(args); end
  def line_break_necessary_in_args?(node); end
  def needed_length_for_args(node); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::MultilineHashBraceLayout < RuboCop::Cop::Base
  def on_hash(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MultilineLiteralBraceLayout
end
class RuboCop::Cop::Layout::MultilineHashKeyLineBreaks < RuboCop::Cop::Base
  def on_hash(node); end
  def starts_with_curly_brace?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MultilineElementLineBreaks
end
class RuboCop::Cop::Layout::MultilineMethodArgumentLineBreaks < RuboCop::Cop::Base
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MultilineElementLineBreaks
end
class RuboCop::Cop::Layout::MultilineMethodCallBraceLayout < RuboCop::Cop::Base
  def children(node); end
  def ignored_literal?(node); end
  def on_send(node); end
  def single_line_ignoring_receiver?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MultilineLiteralBraceLayout
end
class RuboCop::Cop::Layout::MultilineMethodCallIndentation < RuboCop::Cop::Cop
  def align_with_base_message(rhs); end
  def alignment_base(node, rhs, given_style); end
  def autocorrect(node); end
  def base_source; end
  def extra_indentation(given_style, parent); end
  def message(node, lhs, rhs); end
  def no_base_message(lhs, rhs, node); end
  def offending_range(node, lhs, rhs, given_style); end
  def operation_rhs(node); end
  def operator_rhs?(node, receiver); end
  def receiver_alignment_base(node); end
  def relative_to_receiver_message(rhs); end
  def relevant_node?(send_node); end
  def semantic_alignment_base(node, rhs); end
  def semantic_alignment_node(node); end
  def should_align_with_base?; end
  def should_indent_relative_to_receiver?; end
  def syntactic_alignment_base(lhs, rhs); end
  def validate_config; end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::MultilineExpressionIndentation
end
class RuboCop::Cop::Layout::MultilineMethodDefinitionBraceLayout < RuboCop::Cop::Base
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MultilineLiteralBraceLayout
end
class RuboCop::Cop::Layout::MultilineOperationIndentation < RuboCop::Cop::Cop
  def autocorrect(node); end
  def check_and_or(node); end
  def message(node, lhs, rhs); end
  def offending_range(node, lhs, rhs, given_style); end
  def on_and(node); end
  def on_or(node); end
  def relevant_node?(node); end
  def should_align?(node, rhs, given_style); end
  def validate_config; end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::MultilineExpressionIndentation
end
class RuboCop::Cop::Layout::ParameterAlignment < RuboCop::Cop::Cop
  def autocorrect(node); end
  def base_column(node, args); end
  def fixed_indentation?; end
  def message(_node); end
  def on_def(node); end
  def on_defs(node); end
  def target_method_lineno(node); end
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Layout::RescueEnsureAlignment < RuboCop::Cop::Base
  def access_modifier?(node); end
  def access_modifier_node(node); end
  def alignment_location(alignment_node); end
  def alignment_node(node); end
  def alignment_source(node, starting_loc); end
  def ancestor_node(node); end
  def assignment_node(node); end
  def autocorrect(corrector, node, alignment_location); end
  def begin_end_alignment_style; end
  def check(node); end
  def format_message(alignment_node, alignment_loc, kw_loc); end
  def modifier?(node); end
  def on_ensure(node); end
  def on_new_investigation; end
  def on_resbody(node); end
  def whitespace_range(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::EndKeywordAlignment
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceAfterColon < RuboCop::Cop::Base
  def followed_by_space?(colon); end
  def on_kwoptarg(node); end
  def on_pair(node); end
  def register_offense(colon); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Layout::SpaceAfterComma < RuboCop::Cop::Base
  def kind(token); end
  def space_style_before_rcurly; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::SpaceAfterPunctuation
end
class RuboCop::Cop::Layout::SpaceAfterMethodName < RuboCop::Cop::Base
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceAfterNot < RuboCop::Cop::Base
  def on_send(node); end
  def whitespace_after_operator?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceAfterSemicolon < RuboCop::Cop::Base
  def kind(token); end
  def space_style_before_rcurly; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::SpaceAfterPunctuation
end
class RuboCop::Cop::Layout::SpaceAroundBlockParameters < RuboCop::Cop::Base
  def check_after_closing_pipe(arguments); end
  def check_arg(arg); end
  def check_closing_pipe_space(arguments, closing_pipe); end
  def check_each_arg(args); end
  def check_inside_pipes(arguments); end
  def check_no_space(space_begin_pos, space_end_pos, msg); end
  def check_no_space_style_inside_pipes(arguments); end
  def check_opening_pipe_space(arguments, opening_pipe); end
  def check_space(space_begin_pos, space_end_pos, range, msg, node = nil); end
  def check_space_style_inside_pipes(arguments); end
  def last_end_pos_inside_pipes(arguments, range); end
  def on_block(node); end
  def pipes(arguments); end
  def pipes?(arguments); end
  def style_parameter_name; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceAroundEqualsInParameterDefault < RuboCop::Cop::Base
  def autocorrect(corrector, range); end
  def check_optarg(arg, equals, value); end
  def incorrect_style_detected(arg, value); end
  def message(_node); end
  def no_surrounding_space?(arg, equals); end
  def on_optarg(node); end
  def space_on_both_sides?(arg, equals); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Layout::SpaceAroundKeyword < RuboCop::Cop::Base
  def accept_left_parenthesis?(range); end
  def accept_left_square_bracket?(range); end
  def accept_namespace_operator?(range); end
  def accepted_opening_delimiter?(range, char); end
  def check(node, locations, begin_keyword = nil); end
  def check_begin(node, range, begin_keyword); end
  def check_end(node, range, begin_keyword); end
  def check_keyword(node, range); end
  def do?(node); end
  def namespace_operator?(range, pos); end
  def on_and(node); end
  def on_block(node); end
  def on_break(node); end
  def on_case(node); end
  def on_defined?(node); end
  def on_ensure(node); end
  def on_for(node); end
  def on_if(node); end
  def on_kwbegin(node); end
  def on_next(node); end
  def on_or(node); end
  def on_postexe(node); end
  def on_preexe(node); end
  def on_resbody(node); end
  def on_rescue(node); end
  def on_return(node); end
  def on_send(node); end
  def on_super(node); end
  def on_until(node); end
  def on_when(node); end
  def on_while(node); end
  def on_yield(node); end
  def on_zsuper(node); end
  def preceded_by_operator?(node, _range); end
  def safe_navigation_call?(range, pos); end
  def space_after_missing?(range); end
  def space_before_missing?(range); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Layout::SpaceAroundMethodCallOperator < RuboCop::Cop::Base
  def check_space(begin_pos, end_pos); end
  def check_space_after_dot(node); end
  def check_space_after_double_colon(node); end
  def check_space_before_dot(node); end
  def on_const(node); end
  def on_csend(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceAroundOperators < RuboCop::Cop::Base
  def align_hash_cop_config; end
  def autocorrect(corrector, range); end
  def check_operator(type, operator, right_operand); end
  def enclose_operator_with_space(corrector, range); end
  def excess_leading_space?(type, operator, with_space); end
  def excess_trailing_space?(right_operand, with_space); end
  def force_equal_sign_alignment?; end
  def hash_table_style?; end
  def offense(type, operator, with_space, right_operand); end
  def offense_message(type, operator, with_space, right_operand); end
  def on_and(node); end
  def on_and_asgn(node); end
  def on_assignment(node); end
  def on_binary(node); end
  def on_casgn(node); end
  def on_class(node); end
  def on_cvasgn(node); end
  def on_gvasgn(node); end
  def on_if(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_op_asgn(node); end
  def on_or(node); end
  def on_or_asgn(node); end
  def on_pair(node); end
  def on_resbody(node); end
  def on_send(node); end
  def on_special_asgn(node); end
  def operator_with_regular_syntax?(send_node); end
  def regular_operator?(send_node); end
  def self.autocorrect_incompatible_with; end
  def should_not_have_surrounding_space?(operator); end
  def space_around_exponent_operator?; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::PrecedingFollowingAlignment
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::RationalLiteral
end
class RuboCop::Cop::Layout::SpaceBeforeBlockBraces < RuboCop::Cop::Base
  def autocorrect(corrector, range); end
  def block_delimiters_style; end
  def check_empty(left_brace, space_plus_brace, used_style); end
  def check_non_empty(left_brace, space_plus_brace, used_style); end
  def conflict_with_block_delimiters?(node); end
  def empty_braces?(loc); end
  def on_block(node); end
  def self.autocorrect_incompatible_with; end
  def space_detected(left_brace, space_plus_brace); end
  def space_missing(left_brace); end
  def style_for_empty_braces; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceBeforeBrackets < RuboCop::Cop::Base
  def offense_range(node, begin_pos); end
  def on_send(node); end
  def reference_variable_with_brackets?(node); end
  def register_offense(range); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceBeforeComma < RuboCop::Cop::Base
  def kind(token); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::SpaceBeforePunctuation
end
class RuboCop::Cop::Layout::SpaceBeforeComment < RuboCop::Cop::Base
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Layout::SpaceBeforeFirstArg < RuboCop::Cop::Base
  def expect_params_after_method_name?(node); end
  def no_space_between_method_name_and_first_argument?(node); end
  def on_csend(node); end
  def on_send(node); end
  def regular_method_call_with_arguments?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::PrecedingFollowingAlignment
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceBeforeSemicolon < RuboCop::Cop::Base
  def kind(token); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::SpaceBeforePunctuation
end
class RuboCop::Cop::Layout::SpaceInLambdaLiteral < RuboCop::Cop::Base
  def arrow_lambda_with_args?(node); end
  def on_send(node); end
  def range_of_offense(node); end
  def space_after_arrow(lambda_node); end
  def space_after_arrow?(lambda_node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::SpaceInsideArrayPercentLiteral < RuboCop::Cop::Base
  def each_unnecessary_space_match(node, &blk); end
  def on_array(node); end
  def on_percent_literal(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MatchRange
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Layout::SpaceInsideArrayLiteralBrackets < RuboCop::Cop::Base
  def array_brackets(node); end
  def autocorrect(corrector, node); end
  def compact(corrector, bracket, side); end
  def compact_corrections(corrector, node, left, right); end
  def compact_offense(node, token, side: nil); end
  def compact_offenses(node, left, right, start_ok, end_ok); end
  def empty_config; end
  def end_has_own_line?(token); end
  def index_for(node, token); end
  def issue_offenses(node, left, right, start_ok, end_ok); end
  def left_array_bracket(node); end
  def line_and_column_for(token); end
  def multi_dimensional_array?(node, token, side: nil); end
  def next_to_bracket?(token, side: nil); end
  def next_to_comment?(node, token); end
  def next_to_newline?(node, token); end
  def on_array(node); end
  def qualifies_for_compact?(node, token, side: nil); end
  def right_array_bracket(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Layout::SpaceInsideBlockBraces < RuboCop::Cop::Base
  def adjacent_braces(left_brace, right_brace); end
  def aligned_braces?(left_brace, right_brace); end
  def braces_with_contents_inside(node, inner); end
  def check_inside(node, left_brace, right_brace); end
  def check_left_brace(inner, left_brace, args_delimiter); end
  def check_right_brace(inner, left_brace, right_brace, single_line); end
  def multiline_block?(left_brace, right_brace); end
  def no_space(begin_pos, end_pos, msg); end
  def no_space_inside_left_brace(left_brace, args_delimiter); end
  def offense(begin_pos, end_pos, msg, style_param = nil); end
  def on_block(node); end
  def pipe?(args_delimiter); end
  def space(begin_pos, end_pos, msg); end
  def space_inside_left_brace(left_brace, args_delimiter); end
  def space_inside_right_brace(right_brace); end
  def style_for_empty_braces; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Layout::SpaceInsideHashLiteralBraces < RuboCop::Cop::Base
  def ambiguous_or_unexpected_style_detected(style, is_match); end
  def autocorrect(corrector, range); end
  def check(token1, token2); end
  def expect_space?(token1, token2); end
  def incorrect_style_detected(token1, token2, expect_space, is_empty_braces); end
  def message(brace, is_empty_braces, expect_space); end
  def offense?(token1, expect_space); end
  def on_hash(node); end
  def range_of_space_to_the_left(range); end
  def range_of_space_to_the_right(range); end
  def space_range(token_range); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Layout::SpaceInsideParens < RuboCop::Cop::Base
  def can_be_ignored?(token1, token2); end
  def each_extraneous_space(tokens); end
  def each_extraneous_space_in_empty_parens(token1, token2); end
  def each_missing_space(token1, token2); end
  def on_new_investigation; end
  def parens?(token1, token2); end
  def process_with_space_style(processed_source); end
  def same_line?(token1, token2); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Layout::SpaceInsidePercentLiteralDelimiters < RuboCop::Cop::Base
  def add_offenses_for_unnecessary_spaces(node); end
  def on_array(node); end
  def on_percent_literal(node); end
  def on_xstr(node); end
  def regex_matches(node, &blk); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MatchRange
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Layout::SpaceInsideRangeLiteral < RuboCop::Cop::Base
  def check(node); end
  def on_erange(node); end
  def on_irange(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Layout::SpaceInsideReferenceBrackets < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def closing_bracket(tokens, opening_bracket); end
  def empty_config; end
  def left_ref_bracket(node, tokens); end
  def on_send(node); end
  def previous_token(current_token); end
  def reference_brackets(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Layout::SpaceInsideStringInterpolation < RuboCop::Cop::Base
  def autocorrect(corrector, begin_node); end
  def delimiters(begin_node); end
  def on_interpolation(begin_node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::Interpolation
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Layout::TrailingEmptyLines < RuboCop::Cop::Base
  def ends_in_end?(processed_source); end
  def message(wanted_blank_lines, blank_lines); end
  def offense_detected(buffer, wanted_blank_lines, blank_lines, whitespace_at_end); end
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Layout::TrailingWhitespace < RuboCop::Cop::Base
  def extract_heredocs(ast); end
  def find_heredoc(line_number); end
  def offense_range(lineno, line); end
  def on_new_investigation; end
  def process_line(line, lineno); end
  def skip_heredoc?; end
  def static?(heredoc); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::AmbiguousAssignment < RuboCop::Cop::Base
  def on_asgn(node); end
  def on_casgn(node); end
  def on_cvasgn(node); end
  def on_gvasgn(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def rhs(node); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::AmbiguousBlockAssociation < RuboCop::Cop::Base
  def allowed_method?(node); end
  def ambiguous_block_association?(send_node); end
  def message(send_node); end
  def on_csend(node); end
  def on_send(node); end
end
class RuboCop::Cop::Lint::AmbiguousOperator < RuboCop::Cop::Base
  def find_offense_node_by(diagnostic); end
  def message(diagnostic); end
  def offense_node(node); end
  def offense_position?(node, diagnostic); end
  def on_new_investigation; end
  def unary_operator?(node, diagnostic); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::AmbiguousRegexpLiteral < RuboCop::Cop::Base
  def find_offense_node(node, regexp_receiver); end
  def find_offense_node_by(diagnostic); end
  def method_chain_to_regexp_receiver?(node, regexp_receiver); end
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::AssignmentInCondition < RuboCop::Cop::Base
  def allowed_construct?(asgn_node); end
  def conditional_assignment?(asgn_node); end
  def message(_node); end
  def on_if(node); end
  def on_until(node); end
  def on_while(node); end
  def skip_children?(asgn_node); end
  def traverse_node(node, types, &block); end
  include RuboCop::Cop::SafeAssignment
end
class RuboCop::Cop::Lint::BigDecimalNew < RuboCop::Cop::Base
  def big_decimal_new(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::BinaryOperatorWithIdenticalOperands < RuboCop::Cop::Base
  def on_and(node); end
  def on_or(node); end
  def on_send(node); end
end
class RuboCop::Cop::Lint::BooleanSymbol < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def boolean_symbol?(param0 = nil); end
  def on_sym(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::CircularArgumentReference < RuboCop::Cop::Base
  def check_for_circular_argument_references(arg_name, arg_value); end
  def on_kwoptarg(node); end
  def on_optarg(node); end
end
class RuboCop::Cop::Lint::ConstantDefinitionInBlock < RuboCop::Cop::Base
  def constant_assigned_in_block?(param0 = nil); end
  def method_name(node); end
  def module_defined_in_block?(param0 = nil); end
  def on_casgn(node); end
  def on_class(node); end
  def on_module(node); end
  include RuboCop::Cop::AllowedMethods
end
class RuboCop::Cop::Lint::ConstantResolution < RuboCop::Cop::Base
  def allowed_names; end
  def const_name?(name); end
  def ignored_names; end
  def on_const(node); end
  def unqualified_const?(param0 = nil); end
end
class RuboCop::Cop::Lint::Debugger < RuboCop::Cop::Base
  def debugger_method?(name); end
  def debugger_receiver?(node); end
  def message(node); end
  def on_send(node); end
end
class RuboCop::Cop::Lint::DeprecatedClassMethods < RuboCop::Cop::Base
  def check(node); end
  def deprecated_method(data); end
  def method_call(class_constant, method); end
  def on_send(node); end
  def replacement_method(data); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::DeprecatedClassMethods::DeprecatedClassMethod
  def class_constant; end
  def class_nodes; end
  def deprecated_method; end
  def initialize(deprecated:, replacement:, class_constant: nil); end
  def replacement_method; end
  include RuboCop::AST::Sexp
end
class RuboCop::Cop::Lint::DeprecatedConstants < RuboCop::Cop::Base
  def consntant_name(node, nested_constant_name); end
  def deprecated_constants; end
  def message(good, bad, deprecated_version); end
  def on_const(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::DeprecatedOpenSSLConstant < RuboCop::Cop::Base
  def algorithm_const(param0 = nil); end
  def algorithm_name(node); end
  def autocorrect(corrector, node); end
  def build_cipher_arguments(node, algorithm_name); end
  def correction_range(node); end
  def message(node); end
  def on_send(node); end
  def openssl_class(node); end
  def replacement_args(node); end
  def sanitize_arguments(arguments); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::DisjunctiveAssignmentInConstructor < RuboCop::Cop::Base
  def check(node); end
  def check_body(body); end
  def check_body_lines(lines); end
  def check_disjunctive_assignment(node); end
  def on_def(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::DuplicateBranch < RuboCop::Cop::Base
  def branches(node); end
  def consider_branch?(branch); end
  def const_branch?(branch); end
  def ignore_constant_branches?; end
  def ignore_literal_branches?; end
  def literal_branch?(branch); end
  def offense_range(duplicate_branch); end
  def on_branching_statement(node); end
  def on_case(node); end
  def on_if(node); end
  def on_rescue(node); end
  include RuboCop::Cop::RescueNode
end
class RuboCop::Cop::Lint::DuplicateCaseCondition < RuboCop::Cop::Base
  def on_case(case_node); end
end
class RuboCop::Cop::Lint::DuplicateElsifCondition < RuboCop::Cop::Base
  def on_if(node); end
end
class RuboCop::Cop::Lint::DuplicateHashKey < RuboCop::Cop::Base
  def on_hash(node); end
  include RuboCop::Cop::Duplication
end
class RuboCop::Cop::Lint::DuplicateMethods < RuboCop::Cop::Base
  def alias_method?(param0 = nil); end
  def check_const_receiver(node, name, const_name); end
  def check_self_receiver(node, name); end
  def found_attr(node, args, readable: nil, writable: nil); end
  def found_instance_method(node, name); end
  def found_method(node, method_name); end
  def initialize(config = nil, options = nil); end
  def lookup_constant(node, const_name); end
  def message_for_dup(node, method_name); end
  def method_alias?(param0 = nil); end
  def on_alias(node); end
  def on_attr(node, attr_name, args); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
  def possible_dsl?(node); end
  def qualified_name(enclosing, namespace, mod_name); end
  def source_location(node); end
  def sym_name(param0 = nil); end
end
class RuboCop::Cop::Lint::DuplicateRegexpCharacterClassElement < RuboCop::Cop::Base
  def each_repeated_character_class_element_loc(node); end
  def interpolation_locs(node); end
  def on_regexp(node); end
  def within_interpolation?(node, child); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::DuplicateRequire < RuboCop::Cop::Base
  def on_new_investigation; end
  def on_send(node); end
  def require_call?(param0 = nil); end
end
class RuboCop::Cop::Lint::DuplicateRescueException < RuboCop::Cop::Base
  def on_rescue(node); end
  include RuboCop::Cop::RescueNode
end
class RuboCop::Cop::Lint::EachWithObjectArgument < RuboCop::Cop::Base
  def each_with_object?(param0 = nil); end
  def on_csend(node); end
  def on_send(node); end
end
class RuboCop::Cop::Lint::ElseLayout < RuboCop::Cop::Base
  def autocorrect(corrector, node, first_else); end
  def check(node); end
  def check_else(node); end
  def on_if(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::EmptyBlock < RuboCop::Cop::Base
  def allow_comment?(node); end
  def allow_empty_lambdas?; end
  def comment_disables_cop?(comment); end
  def on_block(node); end
end
class RuboCop::Cop::Lint::EmptyClass < RuboCop::Cop::Base
  def body_or_allowed_comment_lines?(node); end
  def on_class(node); end
  def on_sclass(node); end
end
class RuboCop::Cop::Lint::EmptyConditionalBody < RuboCop::Cop::Base
  def on_if(node); end
end
class RuboCop::Cop::Lint::EmptyEnsure < RuboCop::Cop::Base
  def on_ensure(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::EmptyExpression < RuboCop::Cop::Base
  def empty_expression?(begin_node); end
  def on_begin(node); end
end
class RuboCop::Cop::Lint::EmptyFile < RuboCop::Cop::Base
  def contains_only_comments?; end
  def empty_file?; end
  def offending?; end
  def on_new_investigation; end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::EmptyInterpolation < RuboCop::Cop::Base
  def on_interpolation(begin_node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Interpolation
end
class RuboCop::Cop::Lint::EmptyWhen < RuboCop::Cop::Base
  def on_case(node); end
end
class RuboCop::Cop::Lint::EnsureReturn < RuboCop::Cop::Base
  def on_ensure(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::ErbNewArguments < RuboCop::Cop::Base
  def arguments_range(node); end
  def autocorrect(corrector, node); end
  def build_kwargs(node); end
  def correct_arguments?(arguments); end
  def erb_new_with_non_keyword_arguments(param0 = nil); end
  def on_send(node); end
  def override_by_legacy_args(kwargs, node); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::TargetRubyVersion
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::FlipFlop < RuboCop::Cop::Base
  def on_eflipflop(node); end
  def on_iflipflop(node); end
end
class RuboCop::Cop::Lint::FloatComparison < RuboCop::Cop::Base
  def check_numeric_returning_method(node); end
  def check_send(node); end
  def float?(node); end
  def on_send(node); end
end
class RuboCop::Cop::Lint::FloatOutOfRange < RuboCop::Cop::Base
  def on_float(node); end
end
class RuboCop::Cop::Lint::FormatParameterMismatch < RuboCop::Cop::Base
  def called_on_string?(param0 = nil); end
  def count_format_matches(node); end
  def count_matches(node); end
  def count_percent_matches(node); end
  def countable_format?(node); end
  def countable_percent?(node); end
  def expected_fields_count(node); end
  def format?(node); end
  def format_method?(name, node); end
  def format_string?(node); end
  def heredoc?(node); end
  def invalid_format_string?(node); end
  def matched_arguments_count?(expected, passed); end
  def message(node); end
  def method_with_format_args?(node); end
  def offending_node?(node); end
  def on_send(node); end
  def percent?(node); end
  def splat_args?(node); end
  def sprintf?(node); end
end
class RuboCop::Cop::Lint::HashCompareByIdentity < RuboCop::Cop::Base
  def id_as_hash_key?(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::Lint::HeredocMethodCallPosition < RuboCop::Cop::Base
  def all_on_same_line?(nodes); end
  def autocorrect(corrector, node, heredoc); end
  def call_after_heredoc_range(heredoc); end
  def call_end_pos(node); end
  def call_line_range(node); end
  def call_range_to_safely_reposition(node, heredoc); end
  def calls_on_multiple_lines?(node, _heredoc); end
  def correctly_positioned?(node, heredoc); end
  def heredoc_begin_line_range(heredoc); end
  def heredoc_end_pos(heredoc); end
  def heredoc_node?(node); end
  def heredoc_node_descendent_receiver(node); end
  def on_csend(node); end
  def on_send(node); end
  def send_node?(node); end
  def trailing_comma?(call_source, call_line_source); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::IdentityComparison < RuboCop::Cop::Base
  def compare_between_object_id_by_double_equal?(node); end
  def object_id_method?(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::ImplicitStringConcatenation < RuboCop::Cop::Base
  def display_str(node); end
  def each_bad_cons(node); end
  def ending_delimiter(str); end
  def on_dstr(node); end
  def str_content(node); end
  def string_literal?(node); end
  def string_literals?(node1, node2); end
end
class RuboCop::Cop::Lint::InheritException < RuboCop::Cop::Base
  def class_new_call?(param0 = nil); end
  def illegal_class_name?(class_node); end
  def message(node); end
  def on_class(node); end
  def on_send(node); end
  def preferred_base_class; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Lint::IneffectiveAccessModifier < RuboCop::Cop::Base
  def access_modifier?(node); end
  def check_node(node); end
  def correct_visibility?(node, modifier, ignored_methods); end
  def format_message(modifier); end
  def ineffective_modifier(node, ignored_methods = nil, modifier = nil, &block); end
  def on_class(node); end
  def on_module(node); end
  def private_class_method_names(node); end
  def private_class_methods(param0); end
end
class RuboCop::Cop::Lint::InterpolationCheck < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def heredoc?(node); end
  def on_str(node); end
  def string_or_regex?(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::LambdaWithoutLiteralBlock < RuboCop::Cop::Base
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::LiteralAsCondition < RuboCop::Cop::Base
  def basic_literal?(node); end
  def check_case(case_node); end
  def check_for_literal(node); end
  def check_node(node); end
  def condition(node); end
  def handle_node(node); end
  def message(node); end
  def on_case(case_node); end
  def on_if(node); end
  def on_send(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_while(node); end
  def on_while_post(node); end
  def primitive_array?(node); end
  def when_conditions_range(when_node); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::LiteralInInterpolation < RuboCop::Cop::Base
  def autocorrected_value(node); end
  def autocorrected_value_for_array(node); end
  def autocorrected_value_for_string(node); end
  def autocorrected_value_for_symbol(node); end
  def ends_heredoc_line?(node); end
  def in_array_percent_literal?(node); end
  def offending?(node); end
  def on_interpolation(begin_node); end
  def prints_as_self?(node); end
  def space_literal?(node); end
  def special_keyword?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Interpolation
  include RuboCop::Cop::PercentLiteral
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::Loop < RuboCop::Cop::Base
  def build_break_line(node); end
  def keyword_and_condition_range(node); end
  def on_until_post(node); end
  def on_while_post(node); end
  def register_offense(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::MissingCopEnableDirective < RuboCop::Cop::Base
  def message(max_range:, cop:); end
  def on_new_investigation; end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::MissingSuper < RuboCop::Cop::Base
  def callback_method_def?(node); end
  def contains_super?(node); end
  def inside_class_with_stateful_parent?(node); end
  def offender?(node); end
  def on_def(node); end
  def on_defs(node); end
  def stateless_class?(node); end
end
class RuboCop::Cop::Lint::MixedRegexpCaptureTypes < RuboCop::Cop::Base
  def on_regexp(node); end
end
class RuboCop::Cop::Lint::MultipleComparison < RuboCop::Cop::Base
  def multiple_compare?(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::NestedMethodDefinition < RuboCop::Cop::Base
  def class_or_module_or_struct_new_call?(param0 = nil); end
  def eval_call?(param0 = nil); end
  def exec_call?(param0 = nil); end
  def on_def(node); end
  def on_defs(node); end
  def scoping_method_call?(child); end
end
class RuboCop::Cop::Lint::NestedPercentLiteral < RuboCop::Cop::Base
  def contains_percent_literals?(node); end
  def on_array(node); end
  def on_percent_literal(node); end
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Lint::NextWithoutAccumulator < RuboCop::Cop::Base
  def on_block(node); end
  def on_body_of_reduce(param0 = nil); end
  def parent_block_node(node); end
end
class RuboCop::Cop::Lint::NoReturnInBeginEndBlocks < RuboCop::Cop::Base
  def on_lvasgn(node); end
  def on_op_asgn(node); end
  def on_or_asgn(node); end
end
class RuboCop::Cop::Lint::NonDeterministicRequireOrder < RuboCop::Cop::Base
  def correct_block(corrector, node); end
  def correct_block_pass(corrector, node); end
  def last_arg_range(node); end
  def loop_variable(param0 = nil); end
  def method_require?(param0 = nil); end
  def on_block(node); end
  def on_block_pass(node); end
  def unsorted_dir_block?(param0 = nil); end
  def unsorted_dir_each?(param0 = nil); end
  def unsorted_dir_each_pass?(param0 = nil); end
  def unsorted_dir_glob_pass?(param0 = nil); end
  def unsorted_dir_loop?(node); end
  def unsorted_dir_pass?(node); end
  def var_is_required?(param0, param1); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::NonLocalExitFromIterator < RuboCop::Cop::Base
  def chained_send?(param0 = nil); end
  def define_method?(param0 = nil); end
  def on_return(return_node); end
  def return_value?(return_node); end
  def scoped_node?(node); end
end
class RuboCop::Cop::Lint::NumberConversion < RuboCop::Cop::Base
  def correct_method(node, receiver); end
  def ignore_receiver?(receiver); end
  def ignored_class?(name); end
  def ignored_classes; end
  def on_send(node); end
  def to_method(param0 = nil); end
  def top_receiver(node); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::IgnoredMethods
end
class RuboCop::Cop::Lint::OrderedMagicComments < RuboCop::Cop::Base
  def autocorrect(corrector, encoding_line, frozen_string_literal_line); end
  def magic_comment_lines; end
  def magic_comments; end
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::FrozenStringLiteral
end
class RuboCop::Cop::Lint::OutOfRangeRegexpRef < RuboCop::Cop::Base
  def after_send(node); end
  def check_regexp(node); end
  def nth_ref_receiver?(send_node); end
  def on_match_with_lvasgn(node); end
  def on_new_investigation; end
  def on_nth_ref(node); end
  def on_when(node); end
  def regexp_first_argument?(send_node); end
  def regexp_receiver?(send_node); end
end
class RuboCop::Cop::Lint::ParenthesesAsGroupedExpression < RuboCop::Cop::Base
  def chained_calls?(node); end
  def first_argument_starts_with_left_parenthesis?(node); end
  def on_csend(node); end
  def on_send(node); end
  def operator_keyword?(node); end
  def space_range(expr, space_length); end
  def spaces_before_left_parenthesis(node); end
  def valid_context?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::PercentStringArray < RuboCop::Cop::Base
  def contains_quotes_or_commas?(node); end
  def on_array(node); end
  def on_percent_literal(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Lint::PercentSymbolArray < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def contains_colons_or_commas?(node); end
  def non_alphanumeric_literal?(literal); end
  def on_array(node); end
  def on_percent_literal(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Lint::RaiseException < RuboCop::Cop::Base
  def allow_implicit_namespaces; end
  def check(node); end
  def exception?(param0 = nil); end
  def exception_new_with_message?(param0 = nil); end
  def implicit_namespace?(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::RandOne < RuboCop::Cop::Base
  def message(node); end
  def on_send(node); end
  def rand_one?(param0 = nil); end
end
class RuboCop::Cop::Lint::RedundantCopDisableDirective < RuboCop::Cop::Base
  def add_offense_for_entire_comment(comment, cops); end
  def add_offense_for_some_cops(comment, cops); end
  def add_offenses(redundant_cops); end
  def all_cop_names; end
  def all_disabled?(comment); end
  def comment_range_with_surrounding_space(range); end
  def cop_range(comment, cop); end
  def describe(cop); end
  def directive_count(comment); end
  def directive_range_in_list(range, ranges); end
  def each_already_disabled(line_ranges, disabled_ranges); end
  def each_line_range(line_ranges, disabled_ranges, offenses, cop); end
  def each_redundant_disable(cop_disabled_line_ranges, offenses, &block); end
  def ends_its_line?(range); end
  def find_redundant(comment, offenses, cop, line_range, next_line_range); end
  def ignore_offense?(disabled_ranges, line_range); end
  def initialize(config = nil, options = nil, offenses = nil); end
  def matching_range(haystack, needle); end
  def offenses_to_check; end
  def offenses_to_check=(arg0); end
  def on_new_investigation; end
  def previous_line_blank?(range); end
  def trailing_range?(ranges, range); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::RedundantCopEnableDirective < RuboCop::Cop::Base
  def all_or_name(name); end
  def comment_start(comment); end
  def cop_name_indention(comment, name); end
  def on_new_investigation; end
  def range_of_offense(comment, name); end
  def range_to_remove(begin_pos, end_pos, comment); end
  def range_with_comma(comment, name); end
  def range_with_comma_after(comment, start, begin_pos, end_pos); end
  def range_with_comma_before(start, begin_pos, end_pos); end
  def register_offense(comment, cop_names); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Lint::RedundantDirGlobSort < RuboCop::Cop::Base
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::TargetRubyVersion
end
class RuboCop::Cop::Lint::RedundantRequireStatement < RuboCop::Cop::Base
  def on_send(node); end
  def unnecessary_require_statement?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::RedundantSafeNavigation < RuboCop::Cop::Base
  def check?(node); end
  def condition?(parent, node); end
  def on_csend(node); end
  def respond_to_nil_specific_method?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::AllowedMethods
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::RedundantSplatExpansion < RuboCop::Cop::Base
  def allow_percent_literal_array_argument?; end
  def array_new?(param0 = nil); end
  def array_new_inside_array_literal?(array_new_node); end
  def array_splat?(node); end
  def autocorrect(corrector, node); end
  def literal_expansion(param0 = nil); end
  def method_argument?(node); end
  def on_splat(node); end
  def part_of_an_array?(node); end
  def redundant_brackets?(node); end
  def redundant_splat_expansion(node); end
  def remove_brackets(array); end
  def replacement_range_and_content(node); end
  def use_percent_literal_array_argument?(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::RedundantStringCoercion < RuboCop::Cop::Base
  def on_interpolation(begin_node); end
  def to_s_without_args?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Interpolation
end
class RuboCop::Cop::Lint::RedundantWithIndex < RuboCop::Cop::Base
  def message(node); end
  def on_block(node); end
  def redundant_with_index?(param0 = nil); end
  def with_index_range(send); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::RedundantWithObject < RuboCop::Cop::Base
  def message(node); end
  def on_block(node); end
  def redundant_with_object?(param0 = nil); end
  def with_object_range(send); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::RegexpAsCondition < RuboCop::Cop::Base
  def on_match_current_line(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::RequireParentheses < RuboCop::Cop::Base
  def check_predicate(predicate, node); end
  def check_ternary(ternary, node); end
  def on_csend(node); end
  def on_send(node); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::RescueException < RuboCop::Cop::Base
  def on_resbody(node); end
  def targets_exception?(rescue_arg_node); end
end
class RuboCop::Cop::Lint::RescueType < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def correction(*exceptions); end
  def invalid_exceptions(exceptions); end
  def on_resbody(node); end
  def valid_exceptions(exceptions); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::ReturnInVoidContext < RuboCop::Cop::Base
  def method_name(context_node); end
  def non_void_context(return_node); end
  def on_return(return_node); end
  def setter_method?(method_name); end
  def void_context_method?(method_name); end
end
class RuboCop::Cop::Lint::SafeNavigationConsistency < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def check(node); end
  def location(node, unsafe_method_call); end
  def on_csend(node); end
  def top_conditional_ancestor(node); end
  def unsafe_method_calls(method_calls, safe_nav_receiver); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::IgnoredNode
  include RuboCop::Cop::NilMethods
end
class RuboCop::Cop::Lint::SafeNavigationChain < RuboCop::Cop::Base
  def bad_method?(param0 = nil); end
  def method_chain(node); end
  def on_send(node); end
  include RuboCop::Cop::NilMethods
end
class RuboCop::Cop::Lint::SafeNavigationWithEmpty < RuboCop::Cop::Base
  def on_if(node); end
  def safe_navigation_empty_in_conditional?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::ScriptPermission < RuboCop::Cop::Base
  def autocorrect(comment); end
  def executable?(processed_source); end
  def format_message_from(processed_source); end
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::SelfAssignment < RuboCop::Cop::Base
  def multiple_self_assignment?(node); end
  def on_and_asgn(node); end
  def on_casgn(node); end
  def on_cvasgn(node); end
  def on_gvasgn(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_or_asgn(node); end
  def rhs_matches_lhs?(rhs, lhs); end
end
class RuboCop::Cop::Lint::SendWithMixinArgument < RuboCop::Cop::Base
  def bad_location(node); end
  def message(method, module_name, bad_method); end
  def mixin_method?(node); end
  def on_send(node); end
  def send_with_mixin_argument?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::ShadowedArgument < RuboCop::Cop::Base
  def after_leaving_scope(scope, _variable_table); end
  def argument_references(argument); end
  def assignment_without_argument_usage(argument); end
  def check_argument(argument); end
  def ignore_implicit_references?; end
  def node_within_block_or_conditional?(node, stop_search_node); end
  def reference_pos(node); end
  def self.joining_forces; end
  def shadowing_assignment(argument); end
  def uses_var?(param0, param1); end
end
class RuboCop::Cop::Lint::ShadowedException < RuboCop::Cop::Base
  def compare_exceptions(exception, other_exception); end
  def contains_multiple_levels_of_exceptions?(group); end
  def evaluate_exceptions(group); end
  def find_shadowing_rescue(rescues); end
  def offense_range(rescues); end
  def on_rescue(node); end
  def rescued_exceptions(rescue_group); end
  def rescued_groups_for(rescues); end
  def sorted?(rescued_groups); end
  def system_call_err?(error); end
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::RescueNode
end
class RuboCop::Cop::Lint::ShadowingOuterLocalVariable < RuboCop::Cop::Base
  def before_declaring_variable(variable, variable_table); end
  def ractor_block?(param0 = nil); end
  def self.joining_forces; end
end
class RuboCop::Cop::Lint::StructNewOverride < RuboCop::Cop::Base
  def on_send(node); end
  def struct_new(param0 = nil); end
end
class RuboCop::Cop::Lint::SuppressedException < RuboCop::Cop::Base
  def comment_between_rescue_and_end?(node); end
  def on_resbody(node); end
end
class RuboCop::Cop::Lint::Syntax < RuboCop::Cop::Base
  def add_offense_from_diagnostic(diagnostic, ruby_version); end
  def add_offense_from_error(error); end
  def beautify_message(message); end
  def on_other_file; end
end
class RuboCop::Cop::Lint::ToEnumArguments < RuboCop::Cop::Base
  def argument_match?(send_arg, def_arg); end
  def arguments_match?(arguments, def_node); end
  def enum_conversion_call?(param0 = nil); end
  def method_name?(param0 = nil, param1); end
  def on_send(node); end
  def passing_keyword_arg?(param0 = nil, param1); end
end
class RuboCop::Cop::Lint::ToJSON < RuboCop::Cop::Base
  def on_def(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::TopLevelReturnWithArgument < RuboCop::Cop::Base
  def ancestors_valid?(return_node); end
  def on_return(return_node); end
end
class RuboCop::Cop::Lint::TrailingCommaInAttributeDeclaration < RuboCop::Cop::Base
  def on_send(node); end
  def trailing_comma_range(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::UnderscorePrefixedVariableName < RuboCop::Cop::Base
  def after_leaving_scope(scope, _variable_table); end
  def allowed_keyword_block_argument?(variable); end
  def check_variable(variable); end
  def self.joining_forces; end
end
class RuboCop::Cop::Lint::UnexpectedBlockArity < RuboCop::Cop::Base
  def acceptable?(node); end
  def arg_count(node); end
  def expected_arity(method); end
  def included_method?(name); end
  def methods; end
  def on_block(node); end
  def on_numblock(node); end
end
class RuboCop::Cop::Lint::UnifiedInteger < RuboCop::Cop::Base
  def fixnum_or_bignum_const(param0 = nil); end
  def on_const(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::UnmodifiedReduceAccumulator < RuboCop::Cop::Base
  def acceptable_return?(return_val, element_name); end
  def accumulator_index?(param0 = nil, param1); end
  def allowed_type?(parent_node); end
  def block_arg_name(node, index); end
  def check_return_values(block_node); end
  def element_modified?(param0, param1); end
  def expression_values(param0); end
  def lvar_used?(param0 = nil, param1); end
  def on_block(node); end
  def on_numblock(node); end
  def potential_offense?(return_values, block_body, element_name, accumulator_name); end
  def reduce_with_block?(param0 = nil); end
  def return_values(block_body_node); end
  def returned_accumulator_index(return_values, accumulator_name, element_name); end
  def returns_accumulator_anywhere?(return_values, accumulator_name); end
end
class RuboCop::Cop::Lint::UnreachableCode < RuboCop::Cop::Base
  def check_case(node); end
  def check_if(node); end
  def flow_command?(param0 = nil); end
  def flow_expression?(node); end
  def on_begin(node); end
  def on_kwbegin(node); end
end
class RuboCop::Cop::Lint::UnreachableLoop < RuboCop::Cop::Base
  def break_command?(param0 = nil); end
  def break_statement?(node); end
  def check(node); end
  def check_case(node); end
  def check_if(node); end
  def loop_method?(node); end
  def on_block(node); end
  def on_for(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_while(node); end
  def on_while_post(node); end
  def preceded_by_continue_statement?(break_statement); end
  def statements(node); end
  include RuboCop::Cop::IgnoredPattern
end
class RuboCop::Cop::Lint::UnusedBlockArgument < RuboCop::Cop::Base
  def allow_unused_keyword_arguments?; end
  def allowed_block?(variable); end
  def allowed_keyword_argument?(variable); end
  def augment_message(message, variable); end
  def autocorrect(corrector, node); end
  def check_argument(variable); end
  def define_method_call?(variable); end
  def empty_block?(variable); end
  def ignore_empty_blocks?; end
  def message(variable); end
  def message_for_lambda(variable, all_arguments); end
  def message_for_normal_block(variable, all_arguments); end
  def message_for_underscore_prefix(variable); end
  def self.joining_forces; end
  def variable_type(variable); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Lint::UnusedArgument
end
class RuboCop::Cop::Lint::UnusedMethodArgument < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def check_argument(variable); end
  def ignored_method?(body); end
  def message(variable); end
  def not_implemented?(param0 = nil); end
  def self.joining_forces; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Lint::UnusedArgument
end
class RuboCop::Cop::Lint::UriEscapeUnescape < RuboCop::Cop::Base
  def on_send(node); end
  def uri_escape_unescape?(param0 = nil); end
end
class RuboCop::Cop::Lint::UriRegexp < RuboCop::Cop::Base
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::UselessAccessModifier < RuboCop::Cop::Base
  def access_modifier?(node); end
  def any_context_creating_methods?(child); end
  def any_method_definition?(child); end
  def autocorrect(corrector, node); end
  def check_child_nodes(node, unused, cur_vis); end
  def check_new_visibility(node, unused, new_vis, cur_vis); end
  def check_node(node); end
  def check_scope(node); end
  def check_send_node(node, cur_vis, unused); end
  def class_or_instance_eval?(param0 = nil); end
  def class_or_module_or_struct_new_call?(param0 = nil); end
  def dynamic_method_definition?(param0 = nil); end
  def eval_call?(child); end
  def method_definition?(child); end
  def on_block(node); end
  def on_class(node); end
  def on_module(node); end
  def on_sclass(node); end
  def start_of_new_scope?(child); end
  def static_method_definition?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::UselessAssignment < RuboCop::Cop::Base
  def after_leaving_scope(scope, _variable_table); end
  def check_for_unused_assignments(variable); end
  def collect_variable_like_names(scope); end
  def message_for_useless_assignment(assignment); end
  def message_specification(assignment, variable); end
  def multiple_assignment_message(variable_name); end
  def operator_assignment_message(scope, assignment); end
  def return_value_node_of_scope(scope); end
  def self.joining_forces; end
  def similar_name_message(variable); end
  def variable_like_method_invocation?(node); end
end
class RuboCop::Cop::Lint::UselessElseWithoutRescue < RuboCop::Cop::Base
  def on_new_investigation; end
end
class RuboCop::Cop::Lint::UselessMethodDefinition < RuboCop::Cop::Base
  def delegating?(node, def_node); end
  def on_def(node); end
  def on_defs(node); end
  def optional_args?(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::UselessSetterCall < RuboCop::Cop::Base
  def last_expression(body); end
  def on_def(node); end
  def on_defs(node); end
  def setter_call_to_local_variable?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Lint::UselessSetterCall::MethodVariableTracker
  def constructor?(node); end
  def contain_local_object?(variable_name); end
  def initialize(body_node); end
  def process_assignment(asgn_node, rhs_node); end
  def process_assignment_node(node); end
  def process_binary_operator_assignment(op_asgn_node); end
  def process_logical_operator_assignment(asgn_node); end
  def process_multiple_assignment(masgn_node); end
  def scan(node, &block); end
end
class RuboCop::Cop::Lint::UselessTimes < RuboCop::Cop::Base
  def autocorrect_block(corrector, node); end
  def autocorrect_block_pass(corrector, node, proc_name); end
  def block_arg(param0 = nil); end
  def block_reassigns_arg?(param0, param1); end
  def fix_indentation(source, range); end
  def never_process?(count, node); end
  def on_send(node); end
  def own_line?(node); end
  def remove_node(corrector, node); end
  def times_call?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Lint::Void < RuboCop::Cop::Base
  def check_begin(node); end
  def check_defined(node); end
  def check_expression(expr); end
  def check_literal(node); end
  def check_nonmutating(node); end
  def check_self(node); end
  def check_var(node); end
  def check_void_op(node); end
  def in_void_context?(node); end
  def on_begin(node); end
  def on_block(node); end
  def on_kwbegin(node); end
end
module RuboCop::Cop::Metrics::Utils::IteratingBlock
  def block_method_name(node); end
  def iterating_block?(node); end
  def iterating_method?(name); end
end
class RuboCop::Cop::Metrics::CyclomaticComplexity < RuboCop::Cop::Base
  def block_method(node); end
  def complexity_score_for(node); end
  def count_block?(block); end
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::MethodComplexity
  include RuboCop::Cop::Metrics::Utils::IteratingBlock
end
class RuboCop::Cop::Metrics::Utils::AbcSizeCalculator
  def argument?(node); end
  def assignment?(node); end
  def branch?(node); end
  def calculate; end
  def calculate_node(node); end
  def capturing_variable?(name); end
  def compound_assignment(node); end
  def condition?(node); end
  def else_branch?(node); end
  def evaluate_branch_nodes(node); end
  def evaluate_condition_node(node); end
  def initialize(node, discount_repeated_attributes: nil); end
  def self.calculate(node, discount_repeated_attributes: nil); end
  def simple_assignment?(node); end
  def visit_depth_last(node, &block); end
  include RuboCop::Cop::Metrics::Utils::IteratingBlock
  include RuboCop::Cop::Metrics::Utils::RepeatedCsendDiscount
end
class RuboCop::Cop::Metrics::Utils::CodeLengthCalculator
  def build_foldable_checks(types); end
  def calculate; end
  def classlike_code_length(node); end
  def classlike_node?(node); end
  def code_length(node); end
  def count_comments?; end
  def each_top_level_descendant(node, types, &block); end
  def extract_body(node); end
  def foldable_node?(node); end
  def heredoc_length(node); end
  def heredoc_node?(node); end
  def initialize(node, processed_source, count_comments: nil, foldable_types: nil); end
  def irrelevant_line?(source_line); end
  def line_numbers_of_inner_nodes(node, *types); end
  def namespace_module?(node); end
  def normalize_foldable_types(types); end
  extend RuboCop::AST::NodePattern::Macros
  include RuboCop::Cop::Util
end
class RuboCop::Cop::Metrics::AbcSize < RuboCop::Cop::Base
  def complexity(node); end
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::MethodComplexity
end
class RuboCop::Cop::Metrics::BlockLength < RuboCop::Cop::Base
  def cop_label; end
  def method_receiver_excluded?(node); end
  def on_block(node); end
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::CodeLength
  include RuboCop::Cop::IgnoredMethods
end
class RuboCop::Cop::Metrics::BlockNesting < RuboCop::Cop::Base
  def check_nesting_level(node, max, current_level); end
  def consider_node?(node); end
  def count_blocks?; end
  def message(max); end
  def on_new_investigation; end
  include RuboCop::Cop::ConfigurableMax
end
class RuboCop::Cop::Metrics::ClassLength < RuboCop::Cop::Base
  def message(length, max_length); end
  def on_casgn(node); end
  def on_class(node); end
  include RuboCop::Cop::CodeLength
end
class RuboCop::Cop::Metrics::MethodLength < RuboCop::Cop::Base
  def cop_label; end
  def on_block(node); end
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::CodeLength
  include RuboCop::Cop::IgnoredMethods
end
class RuboCop::Cop::Metrics::ModuleLength < RuboCop::Cop::Base
  def message(length, max_length); end
  def module_definition?(param0 = nil); end
  def on_casgn(node); end
  def on_module(node); end
  include RuboCop::Cop::CodeLength
end
class RuboCop::Cop::Metrics::ParameterLists < RuboCop::Cop::Base
  def args_count(node); end
  def argument_to_lambda_or_proc?(param0 = nil); end
  def count_keyword_args?; end
  def max_optional_parameters; end
  def max_params; end
  def on_args(node); end
  def on_def(node); end
  def on_defs(node); end
  include RuboCop::Cop::ConfigurableMax
end
class RuboCop::Cop::Metrics::PerceivedComplexity < RuboCop::Cop::Metrics::CyclomaticComplexity
  def complexity_score_for(node); end
end
module RuboCop::Cop::Naming
end
class RuboCop::Cop::Naming::AccessorMethodName < RuboCop::Cop::Base
  def bad_reader_name?(node); end
  def bad_writer_name?(node); end
  def message(node); end
  def on_def(node); end
  def on_defs(node); end
end
class RuboCop::Cop::Naming::AsciiIdentifiers < RuboCop::Cop::Base
  def first_non_ascii_chars(string); end
  def first_offense_range(identifier); end
  def on_new_investigation; end
  def should_check?(token); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Naming::BlockParameterName < RuboCop::Cop::Base
  def on_block(node); end
  include RuboCop::Cop::UncommunicativeName
end
class RuboCop::Cop::Naming::ClassAndModuleCamelCase < RuboCop::Cop::Base
  def on_class(node); end
  def on_module(node); end
end
class RuboCop::Cop::Naming::ConstantName < RuboCop::Cop::Base
  def allowed_assignment?(value); end
  def allowed_conditional_expression_on_rhs?(node); end
  def allowed_method_call_on_rhs?(node); end
  def class_or_struct_return_method?(param0 = nil); end
  def contains_contant?(node); end
  def literal_receiver?(param0 = nil); end
  def on_casgn(node); end
end
class RuboCop::Cop::Naming::FileName < RuboCop::Cop::Base
  def allowed_acronyms; end
  def bad_filename_allowed?; end
  def check_definition_path_hierarchy?; end
  def expect_matching_definition?; end
  def filename_good?(basename); end
  def find_class_or_module(node, namespace); end
  def for_bad_filename(file_path); end
  def ignore_executable_scripts?; end
  def match?(expected); end
  def match_acronym?(expected, name); end
  def match_namespace(node, namespace, expected); end
  def matching_class?(file_name); end
  def matching_definition?(file_path); end
  def no_definition_message(basename, file_path); end
  def on_new_investigation; end
  def other_message(basename); end
  def partial_matcher!(expected); end
  def perform_class_and_module_naming_checks(file_path, basename); end
  def regex; end
  def to_module_name(basename); end
  def to_namespace(path); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Naming::HeredocDelimiterCase < RuboCop::Cop::Base
  def correct_case_delimiters?(node); end
  def correct_delimiters(source); end
  def message(_node); end
  def on_heredoc(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::Heredoc
end
class RuboCop::Cop::Naming::HeredocDelimiterNaming < RuboCop::Cop::Base
  def forbidden_delimiters; end
  def meaningful_delimiters?(node); end
  def on_heredoc(node); end
  include RuboCop::Cop::Heredoc
end
class RuboCop::Cop::Naming::MemoizedInstanceVariableName < RuboCop::Cop::Base
  def defined_memoized?(param0 = nil, param1); end
  def find_definition(node); end
  def matches?(method_name, ivar_assign); end
  def message(variable); end
  def method_definition?(param0 = nil); end
  def on_defined?(node); end
  def on_or_asgn(node); end
  def style_parameter_name; end
  def suggested_var(method_name); end
  def variable_name_candidates(method_name); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Naming::MethodName < RuboCop::Cop::Base
  def attr_name(name_item); end
  def message(style); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
  def range_position(node); end
  def str_name(param0 = nil); end
  def sym_name(param0 = nil); end
  include RuboCop::Cop::ConfigurableNaming
  include RuboCop::Cop::IgnoredPattern
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Naming::MethodParameterName < RuboCop::Cop::Base
  def on_def(node); end
  def on_defs(node); end
  include RuboCop::Cop::UncommunicativeName
end
class RuboCop::Cop::Naming::BinaryOperatorParameterName < RuboCop::Cop::Base
  def on_def(node); end
  def op_method?(name); end
  def op_method_candidate?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Naming::PredicateName < RuboCop::Cop::Base
  def allowed_method_name?(method_name, prefix); end
  def dynamic_method_define(param0 = nil); end
  def expected_name(method_name, prefix); end
  def forbidden_prefixes; end
  def message(method_name, new_name); end
  def method_definition_macros(macro_name); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
  def predicate_prefixes; end
  include RuboCop::Cop::AllowedMethods
end
class RuboCop::Cop::Naming::RescuedExceptionsVariableName < RuboCop::Cop::Base
  def message(node); end
  def offense_range(resbody); end
  def on_resbody(node); end
  def preferred_name(variable_name); end
  def variable_name(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Naming::VariableName < RuboCop::Cop::Base
  def message(style); end
  def on_arg(node); end
  def on_blockarg(node); end
  def on_cvasgn(node); end
  def on_ivasgn(node); end
  def on_kwarg(node); end
  def on_kwoptarg(node); end
  def on_kwrestarg(node); end
  def on_lvar(node); end
  def on_lvasgn(node); end
  def on_optarg(node); end
  def on_restarg(node); end
  include RuboCop::Cop::AllowedIdentifiers
  include RuboCop::Cop::ConfigurableNaming
end
class RuboCop::Cop::Naming::VariableNumber < RuboCop::Cop::Base
  def message(style); end
  def on_arg(node); end
  def on_cvasgn(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def on_sym(node); end
  include RuboCop::Cop::AllowedIdentifiers
  include RuboCop::Cop::ConfigurableNumbering
end
class RuboCop::Cop::Style::AccessModifierDeclarations < RuboCop::Cop::Base
  def access_modifier_is_inlined?(node); end
  def access_modifier_is_not_inlined?(node); end
  def access_modifier_with_symbol?(param0 = nil); end
  def allow_modifiers_on_symbols?(node); end
  def group_style?; end
  def inline_style?; end
  def message(range); end
  def offense?(node); end
  def on_send(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::AccessorGrouping < RuboCop::Cop::Base
  def accessor?(send_node); end
  def autocorrect(corrector, node); end
  def check(send_node); end
  def class_send_elements(class_node); end
  def group_accessors(node, accessors); end
  def grouped_style?; end
  def message(send_node); end
  def on_class(node); end
  def on_module(node); end
  def on_sclass(node); end
  def preferred_accessors(node); end
  def previous_line_comment?(node); end
  def separate_accessors(node); end
  def separated_style?; end
  def sibling_accessors(send_node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::VisibilityHelp
end
class RuboCop::Cop::Style::Alias < RuboCop::Cop::Base
  def add_offense_for_args(node, &block); end
  def alias_keyword_possible?(node); end
  def alias_method_possible?(node); end
  def autocorrect(corrector, node); end
  def bareword?(sym_node); end
  def correct_alias_method_to_alias(corrector, send_node); end
  def correct_alias_to_alias_method(corrector, node); end
  def correct_alias_with_symbol_args(corrector, node); end
  def identifier(param0 = nil); end
  def lexical_scope_type(node); end
  def on_alias(node); end
  def on_send(node); end
  def scope_type(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::AndOr < RuboCop::Cop::Base
  def correct_not(node, receiver, corrector); end
  def correct_other(node, corrector); end
  def correct_send(node, corrector); end
  def correct_setter(node, corrector); end
  def correctable_send?(node); end
  def keep_operator_precedence(corrector, node); end
  def message(node); end
  def on_and(node); end
  def on_conditionals(node); end
  def on_if(node); end
  def on_or(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_while(node); end
  def on_while_post(node); end
  def process_logical_operator(node); end
  def whitespace_before_arg(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::ArgumentsForwarding < RuboCop::Cop::Base
  def all_lvars_as_forwarding_method_arguments?(def_node, forwarding_method); end
  def allow_only_rest_arguments?; end
  def arguments_range(node); end
  def extract_argument_names_from(args); end
  def forwarding_method?(node, rest_arg, kwargs, block_arg); end
  def forwarding_method_arguments?(param0 = nil, param1, param2, param3); end
  def on_def(node); end
  def on_defs(node); end
  def only_rest_arguments?(param0 = nil, param1); end
  def register_offense_to_forwarding_method_arguments(forwarding_method); end
  def register_offense_to_method_definition_arguments(method_definition); end
  def use_rest_arguments?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::TargetRubyVersion
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::ArrayCoercion < RuboCop::Cop::Base
  def array_splat?(param0 = nil); end
  def on_array(node); end
  def on_if(node); end
  def unless_array?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::ArrayJoin < RuboCop::Cop::Base
  def join_candidate?(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::AsciiComments < RuboCop::Cop::Base
  def allowed_non_ascii_chars; end
  def first_non_ascii_chars(string); end
  def first_offense_range(comment); end
  def on_new_investigation; end
  def only_allowed_non_ascii_chars?(string); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::Attr < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def class_eval?(param0 = nil); end
  def message(node); end
  def on_send(node); end
  def replacement_method(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::AutoResourceCleanup < RuboCop::Cop::Base
  def cleanup?(node); end
  def on_send(node); end
end
class RuboCop::Cop::Style::BarePercentLiterals < RuboCop::Cop::Base
  def add_offense_for_wrong_style(node, good, bad); end
  def check(node); end
  def on_dstr(node); end
  def on_str(node); end
  def requires_bare_percent?(source); end
  def requires_percent_q?(source); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::BeginBlock < RuboCop::Cop::Base
  def on_preexe(node); end
end
class RuboCop::Cop::Style::BisectedAttrAccessor < RuboCop::Cop::Base
  def accessor_macroses(class_node, visibility); end
  def accessor_names(class_node, visibility); end
  def attr_reader?(send_node); end
  def attr_reader_replacement(macro, node, rest_args); end
  def attr_within_visibility_scope?(node, visibility); end
  def attr_writer?(send_node); end
  def check(macro, reader_names, writer_names); end
  def on_class(class_node); end
  def on_module(class_node); end
  def on_sclass(class_node); end
  def replacement(macro, node); end
  def rest_args(args, reader_names, writer_names); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::VisibilityHelp
end
class RuboCop::Cop::Style::BlockComments < RuboCop::Cop::Base
  def eq_end_part(comment, expr); end
  def on_new_investigation; end
  def parts(comment); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::BlockDelimiters < RuboCop::Cop::Base
  def array_or_range?(node); end
  def autocorrect(corrector, node); end
  def braces_for_chaining_message(node); end
  def braces_for_chaining_style?(node); end
  def braces_required_message(node); end
  def braces_required_method?(method_name); end
  def braces_required_methods; end
  def braces_style?(node); end
  def conditional?(node); end
  def correction_would_break_code?(node); end
  def functional_block?(node); end
  def functional_method?(method_name); end
  def get_blocks(node, &block); end
  def line_count_based_block_style?(node); end
  def line_count_based_message(node); end
  def message(node); end
  def on_block(node); end
  def on_send(node); end
  def procedural_method?(method_name); end
  def procedural_oneliners_may_have_braces?; end
  def proper_block_style?(node); end
  def replace_braces_with_do_end(corrector, loc); end
  def replace_do_end_with_braces(corrector, loc); end
  def return_value_of_scope?(node); end
  def return_value_used?(node); end
  def semantic_block_style?(node); end
  def semantic_message(node); end
  def special_method?(method_name); end
  def special_method_proper_block_style?(node); end
  def whitespace_after?(range, length = nil); end
  def whitespace_before?(range); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::IgnoredMethods
end
class RuboCop::Cop::Style::CaseEquality < RuboCop::Cop::Base
  def case_equality?(param0 = nil); end
  def const?(node); end
  def on_send(node); end
  def replacement(lhs, rhs); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::CaseLikeIf < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def branch_conditions(node); end
  def class_reference?(node); end
  def collect_conditions(node, target, conditions); end
  def condition_from_binary_op(lhs, rhs, target); end
  def condition_from_equality_node(node, target); end
  def condition_from_match_node(node, target); end
  def condition_from_send_node(node, target); end
  def const_reference?(node); end
  def correction_range(node); end
  def deparenthesize(node); end
  def find_target(node); end
  def find_target_in_equality_node(node); end
  def find_target_in_match_node(node); end
  def find_target_in_send_node(node); end
  def on_if(node); end
  def regexp_with_named_captures?(node); end
  def regexp_with_working_captures?(node); end
  def should_check?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::CharacterLiteral < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def correct_style_detected; end
  def offense?(node); end
  def opposite_style_detected; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::StringHelp
end
class RuboCop::Cop::Style::ClassAndModuleChildren < RuboCop::Cop::Base
  def add_trailing_end(corrector, node, padding); end
  def autocorrect(corrector, node); end
  def check_compact_style(node, body); end
  def check_nested_style(node); end
  def check_style(node, body); end
  def compact_definition(corrector, node); end
  def compact_identifier_name(node); end
  def compact_node(corrector, node); end
  def compact_node_name?(node); end
  def indent_width; end
  def leading_spaces(node); end
  def nest_definition(corrector, node); end
  def nest_or_compact(corrector, node); end
  def on_class(node); end
  def on_module(node); end
  def one_child?(body); end
  def remove_end(corrector, body); end
  def replace_namespace_keyword(corrector, node); end
  def split_on_double_colon(corrector, node, padding); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::ClassCheck < RuboCop::Cop::Base
  def message(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::ClassEqualityComparison < RuboCop::Cop::Base
  def class_comparison_candidate?(param0 = nil); end
  def class_name(class_node, node); end
  def offense_range(receiver_node, node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::IgnoredMethods
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::ClassMethods < RuboCop::Cop::Base
  def check_defs(name, node); end
  def on_class(node); end
  def on_module(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::ClassMethodsDefinitions < RuboCop::Cop::Base
  def all_methods_public?(sclass_node); end
  def autocorrect_sclass(node, corrector); end
  def def_nodes(sclass_node); end
  def def_self_style?; end
  def extract_def_from_sclass(def_node, sclass_node); end
  def indentation_diff(node1, node2); end
  def on_defs(node); end
  def on_sclass(node); end
  def sclass_only_has_methods?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::CommentsHelp
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::VisibilityHelp
end
class RuboCop::Cop::Style::ClassVars < RuboCop::Cop::Base
  def on_cvasgn(node); end
  def on_send(node); end
end
class RuboCop::Cop::Style::CollectionCompact < RuboCop::Cop::Base
  def good_method_name(method_name); end
  def offense_range(send_node, block_node); end
  def on_send(node); end
  def reject_method?(param0 = nil); end
  def select_method?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::CollectionMethods < RuboCop::Cop::Base
  def check_method_node(node); end
  def implicit_block?(node); end
  def message(node); end
  def methods_accepting_symbol; end
  def on_block(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MethodPreference
end
class RuboCop::Cop::Style::ColonMethodCall < RuboCop::Cop::Base
  def java_type_node?(param0 = nil); end
  def on_send(node); end
  def self.autocorrect_incompatible_with; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::ColonMethodDefinition < RuboCop::Cop::Base
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::CombinableLoops < RuboCop::Cop::Base
  def collection_looping_method?(node); end
  def on_block(node); end
  def on_for(node); end
  def same_collection_looping?(node, sibling); end
end
class RuboCop::Cop::Style::CommandLiteral < RuboCop::Cop::Base
  def allow_inner_backticks?; end
  def allowed_backtick_literal?(node); end
  def allowed_percent_x_literal?(node); end
  def autocorrect(corrector, node); end
  def backtick_literal?(node); end
  def check_backtick_literal(node, message); end
  def check_percent_x_literal(node, message); end
  def command_delimiter; end
  def contains_backtick?(node); end
  def contains_disallowed_backtick?(node); end
  def default_delimiter; end
  def node_body(node); end
  def on_xstr(node); end
  def preferred_delimiter; end
  def preferred_delimiters_config; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::CommentAnnotation < RuboCop::Cop::Base
  def annotation_range(comment, margin, first_word, colon, space); end
  def concat_length(*args); end
  def correct_annotation?(first_word, colon, space, note); end
  def first_comment_line?(comments, index); end
  def inline_comment?(comment); end
  def on_new_investigation; end
  def register_offense(range, note, first_word); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::Style::AnnotationComment
end
class RuboCop::Cop::Style::CommentedKeyword < RuboCop::Cop::Base
  def line(comment); end
  def offensive?(comment); end
  def on_new_investigation; end
  def register_offense(comment, matched_keyword); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::Style::ConditionalAssignmentHelper
  def assignment_rhs_exist?(node); end
  def end_with_eq?(sym); end
  def expand_elses(branch); end
  def expand_elsif(node, elsif_branches = nil); end
  def expand_when_branches(when_branches); end
  def indent(cop, source); end
  def lhs(node); end
  def lhs_for_casgn(node); end
  def lhs_for_send(node); end
  def setter_method?(method_name); end
  def tail(branch); end
  extend RuboCop::AST::NodePattern::Macros
end
class RuboCop::Cop::Style::ConditionalAssignment < RuboCop::Cop::Base
  def allowed_single_line?(branches); end
  def allowed_statements?(branches); end
  def allowed_ternary?(assignment); end
  def assignment_node(node); end
  def assignment_type?(param0 = nil); end
  def assignment_types_match?(*nodes); end
  def autocorrect(corrector, node); end
  def candidate_condition?(param0 = nil); end
  def candidate_node?(node); end
  def check_assignment_to_condition(node); end
  def check_node(node, branches); end
  def correction_exceeds_line_limit?(node, branches); end
  def include_ternary?; end
  def indentation_width; end
  def lhs_all_match?(branches); end
  def line_length_cop_enabled?; end
  def longest_line(node, assignment); end
  def longest_line_exceeds_line_limit?(node, assignment); end
  def max_line_length; end
  def move_assignment_inside_condition(corrector, node); end
  def move_assignment_outside_condition(corrector, node); end
  def on_and_asgn(node); end
  def on_case(node); end
  def on_casgn(node); end
  def on_cvasgn(node); end
  def on_gvasgn(node); end
  def on_if(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_op_asgn(node); end
  def on_or_asgn(node); end
  def on_send(node); end
  def single_line_conditions_only?; end
  def ternary_condition?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::IgnoredNode
  include RuboCop::Cop::Style::ConditionalAssignmentHelper
end
module RuboCop::Cop::Style::ConditionalCorrectorHelper
  def assignment(node); end
  def correct_branches(corrector, branches); end
  def correct_if_branches(corrector, cop, node); end
  def remove_whitespace_in_branches(corrector, branch, condition, column); end
  def replace_branch_assignment(corrector, branch); end
  def white_space_range(node, column); end
end
class RuboCop::Cop::Style::TernaryCorrector
  def self.correct(corrector, node); end
  def self.correction(node); end
  def self.element_assignment?(node); end
  def self.extract_branches(node); end
  def self.move_assignment_inside_condition(corrector, node); end
  def self.move_branch_inside_condition(corrector, branch, assignment); end
  def self.remove_parentheses(corrector, node); end
  def self.ternary(node); end
end
class RuboCop::Cop::Style::IfCorrector
  def self.correct(corrector, cop, node); end
  def self.extract_tail_branches(node); end
  def self.move_assignment_inside_condition(corrector, node); end
  def self.move_branch_inside_condition(corrector, branch, condition, assignment, column); end
end
class RuboCop::Cop::Style::CaseCorrector
  def self.correct(corrector, cop, node); end
  def self.extract_branches(case_node); end
  def self.extract_tail_branches(node); end
  def self.move_assignment_inside_condition(corrector, node); end
  def self.move_branch_inside_condition(corrector, branch, condition, assignment, column); end
end
class RuboCop::Cop::Style::ConstantVisibility < RuboCop::Cop::Base
  def class_or_module_scope?(node); end
  def match_name?(name, constant_name); end
  def message(node); end
  def on_casgn(node); end
  def visibility_declaration?(node); end
  def visibility_declaration_for?(param0 = nil, param1); end
end
class RuboCop::Cop::Style::Copyright < RuboCop::Cop::Base
  def autocorrect_notice; end
  def encoding_token?(processed_source, token_index); end
  def insert_notice_before(processed_source); end
  def notice; end
  def notice_found?(processed_source); end
  def offense_range; end
  def on_new_investigation; end
  def shebang_token?(processed_source, token_index); end
  def verify_autocorrect_notice!; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::DateTime < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def date_time?(param0 = nil); end
  def disallow_coercion?; end
  def historic_date?(param0 = nil); end
  def on_send(node); end
  def to_datetime?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::DefWithParentheses < RuboCop::Cop::Base
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::Dir < RuboCop::Cop::Base
  def dir_replacement?(param0 = nil); end
  def file_keyword?(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::DisableCopsWithinSourceCodeDirective < RuboCop::Cop::Base
  def on_new_investigation; end
  def rubocop_directive_comment?(comment); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::DocumentationMethod < RuboCop::Cop::Base
  def check(node); end
  def module_function_node?(param0 = nil); end
  def on_def(node); end
  def on_defs(node); end
  def require_for_non_public_methods?; end
  include RuboCop::Cop::DefNode
  include RuboCop::Cop::DocumentationComment
end
class RuboCop::Cop::Style::Documentation < RuboCop::Cop::Base
  def check(node, body, type); end
  def compact_namespace?(node); end
  def constant_declaration?(node); end
  def constant_definition?(param0 = nil); end
  def constant_visibility_declaration?(param0 = nil); end
  def macro_only?(body); end
  def namespace?(node); end
  def nodoc(node); end
  def nodoc?(comment, require_all: nil); end
  def nodoc_comment?(node, require_all: nil); end
  def on_class(node); end
  def on_module(node); end
  def outer_module(param0); end
  include RuboCop::Cop::DocumentationComment
end
class RuboCop::Cop::Style::DocumentDynamicEvalDefinition < RuboCop::Cop::Base
  def comment_block_docs?(arg_node); end
  def comment_regexp(arg_node); end
  def heredoc_comment_blocks(heredoc_body); end
  def inline_comment_docs?(node); end
  def interpolated?(arg_node); end
  def merge_adjacent_comments(line, index, hash); end
  def on_send(node); end
  def preceding_comment_blocks(node); end
  def source_to_regexp(source); end
end
class RuboCop::Cop::Style::DoubleCopDisableDirective < RuboCop::Cop::Base
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::DoubleNegation < RuboCop::Cop::Base
  def allowed_in_returns?(node); end
  def double_negative?(param0 = nil); end
  def end_of_method_definition?(node); end
  def find_def_node_from_ascendant(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::EachForSimpleLoop < RuboCop::Cop::Base
  def offending_each_range(param0 = nil); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::EachWithObject < RuboCop::Cop::Base
  def accumulator_param_assigned_to?(body, args); end
  def autocorrect(corrector, node, return_value); end
  def each_with_object_candidate?(param0 = nil); end
  def first_argument_returned?(args, return_value); end
  def on_block(node); end
  def return_value(body); end
  def return_value_occupies_whole_line?(node); end
  def simple_method_arg?(method_arg); end
  def whole_line_expression(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::EmptyBlockParameter < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::EmptyParameter
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::EmptyCaseCondition < RuboCop::Cop::Base
  def autocorrect(corrector, case_node); end
  def correct_case_when(corrector, case_node, when_nodes); end
  def correct_when_conditions(corrector, when_nodes); end
  def keep_first_when_comment(case_range, corrector); end
  def on_case(case_node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::EmptyElse < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def autocorrect_forbidden?(type); end
  def base_node(node); end
  def check(node); end
  def comment_in_else?(loc); end
  def empty_check(node); end
  def empty_style?; end
  def missing_else_style; end
  def nil_check(node); end
  def nil_style?; end
  def on_case(node); end
  def on_normal_if_unless(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::OnNormalIfUnless
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::EmptyLambdaParameter < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::EmptyParameter
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::EmptyLiteral < RuboCop::Cop::Base
  def array_node(param0 = nil); end
  def array_with_block(param0 = nil); end
  def correction(node); end
  def enforce_double_quotes?; end
  def first_argument_unparenthesized?(node); end
  def hash_node(param0 = nil); end
  def hash_with_block(param0 = nil); end
  def offense_array_node?(node); end
  def offense_hash_node?(node); end
  def offense_message(node); end
  def on_send(node); end
  def preferred_string_literal; end
  def replacement_range(node); end
  def str_node(param0 = nil); end
  def string_literals_config; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::FrozenStringLiteral
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::EmptyMethod < RuboCop::Cop::Base
  def compact?(node); end
  def compact_style?; end
  def correct_style?(node); end
  def corrected(node); end
  def expanded?(node); end
  def expanded_style?; end
  def joint(node); end
  def message(_range); end
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::EndlessMethod < RuboCop::Cop::Base
  def arguments(node, missing = nil); end
  def correct_to_multiline(corrector, node); end
  def handle_allow_style(node); end
  def handle_disallow_style(node); end
  def on_def(node); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::TargetRubyVersion
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::Encoding < RuboCop::Cop::Base
  def encoding_line_number(processed_source); end
  def encoding_omitable?(line); end
  def offense(processed_source, line_number); end
  def on_new_investigation; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::EndBlock < RuboCop::Cop::Base
  def on_postexe(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::EvalWithLocation < RuboCop::Cop::Base
  def add_offense_for_different_line(_node, line_node, line_diff); end
  def add_offense_for_same_line(_node, line_node); end
  def eval_without_location?(param0 = nil); end
  def line_with_offset?(param0 = nil, param1, param2); end
  def message_incorrect_line(actual, sign, line_diff); end
  def on_send(node); end
  def on_with_lineno(node, code); end
  def special_file_keyword?(node); end
  def special_line_keyword?(node); end
  def string_first_line(str_node); end
  def with_lineno?(node); end
end
class RuboCop::Cop::Style::EvenOdd < RuboCop::Cop::Base
  def even_odd_candidate?(param0 = nil); end
  def on_send(node); end
  def replacement_method(arg, method); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::ExpandPathArguments < RuboCop::Cop::Base
  def arguments_range(node); end
  def autocorrect(corrector, node); end
  def autocorrect_expand_path(corrector, current_path, default_dir); end
  def depth(current_path); end
  def file_expand_path(param0 = nil); end
  def inspect_offense_for_expand_path(node, current_path, default_dir); end
  def on_send(node); end
  def parent_path(current_path); end
  def pathname_new_parent_expand_path(param0 = nil); end
  def pathname_parent_expand_path(param0 = nil); end
  def remove_parent_method(corrector, default_dir); end
  def strip_surrounded_quotes!(path_string); end
  def unrecommended_argument?(default_dir); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::ExplicitBlockArgument < RuboCop::Cop::Base
  def add_block_argument(node, corrector); end
  def block_body_range(block_node, send_node); end
  def initialize(config = nil, options = nil); end
  def on_yield(node); end
  def yielding_arguments?(block_args, yield_args); end
  def yielding_block?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::ExponentialNotation < RuboCop::Cop::Base
  def engineering?(node); end
  def integral(node); end
  def message(_node); end
  def offense?(node); end
  def on_float(node); end
  def scientific?(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::FloatDivision < RuboCop::Cop::Base
  def add_to_f_method(corrector, node); end
  def any_coerce?(param0 = nil); end
  def both_coerce?(param0 = nil); end
  def correct_from_slash_to_fdiv(corrector, node, receiver, argument); end
  def extract_receiver_source(node); end
  def left_coerce?(param0 = nil); end
  def message(_node); end
  def offense_condition?(node); end
  def on_send(node); end
  def remove_to_f_method(corrector, send_node); end
  def right_coerce?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::For < RuboCop::Cop::Base
  def on_block(node); end
  def on_for(node); end
  def suspect_enumerable?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::FormatString < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def autocorrect_from_percent(corrector, node); end
  def autocorrect_to_percent(corrector, node); end
  def format_single_parameter(arg); end
  def formatter(param0 = nil); end
  def message(detected_style); end
  def method_name(style_name); end
  def on_send(node); end
  def variable_argument?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::FormatStringToken < RuboCop::Cop::Base
  def allowed_unannotated?(detections); end
  def collect_detections(node); end
  def format_string_in_typical_context?(param0 = nil); end
  def max_unannotated_placeholders_allowed; end
  def message(detected_style); end
  def message_text(style); end
  def on_str(node); end
  def str_contents(source_map); end
  def token_ranges(contents); end
  def tokens(str_node, &block); end
  def unannotated_format?(node, detected_style); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::FrozenStringLiteralComment < RuboCop::Cop::Base
  def disabled_offense(processed_source); end
  def enable_comment(corrector); end
  def ensure_comment(processed_source); end
  def ensure_enabled_comment(processed_source); end
  def ensure_no_comment(processed_source); end
  def following_comment; end
  def frozen_string_literal_comment(processed_source); end
  def insert_comment(corrector); end
  def last_special_comment(processed_source); end
  def line_range(line); end
  def missing_offense(processed_source); end
  def missing_true_offense(processed_source); end
  def on_new_investigation; end
  def preceding_comment; end
  def remove_comment(corrector, node); end
  def unnecessary_comment_offense(processed_source); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::FrozenStringLiteral
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::GlobalStdStream < RuboCop::Cop::Base
  def const_to_gvar_assignment?(param0 = nil, param1); end
  def gvar_name(const_name); end
  def message(const_name); end
  def on_const(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::GlobalVars < RuboCop::Cop::Base
  def allowed_var?(global_var); end
  def check(node); end
  def on_gvar(node); end
  def on_gvasgn(node); end
  def user_vars; end
end
class RuboCop::Cop::Style::GuardClause < RuboCop::Cop::Base
  def accepted_form?(node, ending: nil); end
  def accepted_if?(node, ending); end
  def check_ending_if(node); end
  def guard_clause_source(guard_clause); end
  def on_def(node); end
  def on_defs(node); end
  def on_if(node); end
  def opposite_keyword(node); end
  def register_offense(node, scope_exiting_keyword, conditional_keyword); end
  def too_long_for_single_line?(node, example); end
  include RuboCop::Cop::MinBodyLength
  include RuboCop::Cop::StatementModifier
end
class RuboCop::Cop::Style::HashAsLastArrayItem < RuboCop::Cop::Base
  def braces_style?; end
  def check_braces(node); end
  def check_no_braces(node); end
  def containing_array(hash_node); end
  def explicit_array?(array); end
  def last_array_item?(array, node); end
  def on_hash(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::HashEachMethods < RuboCop::Cop::Base
  def check_argument(variable); end
  def correct_args(node, corrector); end
  def correct_implicit(node, corrector, method_name); end
  def correct_key_value_each(node, corrector); end
  def kv_each(param0 = nil); end
  def kv_range(outer_node); end
  def on_block(node); end
  def register_kv_offense(node); end
  def used?(arg); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Lint::UnusedArgument
end
class RuboCop::Cop::Style::HashExcept < RuboCop::Cop::Base
  def bad_method?(param0 = nil); end
  def except_key(node); end
  def offense_range(node); end
  def on_send(node); end
  def safe_to_register_offense?(block, except_key); end
  def semantically_except_method?(send, block); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::TargetRubyVersion
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::HashLikeCase < RuboCop::Cop::Base
  def hash_like_case?(param0 = nil); end
  def min_branches_count; end
  def nodes_of_same_type?(nodes); end
  def on_case(node); end
end
class RuboCop::Cop::Style::HashSyntax < RuboCop::Cop::Cop
  def acceptable_19_syntax_symbol?(sym_name); end
  def alternative_style; end
  def argument_without_space?(node); end
  def autocorrect(node); end
  def autocorrect_hash_rockets(corrector, pair_node); end
  def autocorrect_no_mixed_keys(corrector, pair_node); end
  def autocorrect_ruby19(corrector, pair_node); end
  def check(pairs, delim, msg); end
  def force_hash_rockets?(pairs); end
  def hash_rockets_check(pairs); end
  def no_mixed_keys_check(pairs); end
  def on_hash(node); end
  def range_for_autocorrect_ruby19(pair_node); end
  def ruby19_check(pairs); end
  def ruby19_no_mixed_keys_check(pairs); end
  def sym_indices?(pairs); end
  def word_symbol_pair?(pair); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::HashTransformKeys < RuboCop::Cop::Base
  def extract_captures(match); end
  def new_method_name; end
  def on_bad_each_with_object(param0 = nil); end
  def on_bad_hash_brackets_map(param0 = nil); end
  def on_bad_map_to_h(param0 = nil); end
  def on_bad_to_h(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::TargetRubyVersion
  include RuboCop::Cop::HashTransformMethod
end
class RuboCop::Cop::Style::HashTransformValues < RuboCop::Cop::Base
  def extract_captures(match); end
  def new_method_name; end
  def on_bad_each_with_object(param0 = nil); end
  def on_bad_hash_brackets_map(param0 = nil); end
  def on_bad_map_to_h(param0 = nil); end
  def on_bad_to_h(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::HashTransformMethod
end
class RuboCop::Cop::Style::IdenticalConditionalBranches < RuboCop::Cop::Base
  def check_branches(branches); end
  def check_expressions(expressions); end
  def expand_elses(branch); end
  def head(node); end
  def message(node); end
  def on_case(node); end
  def on_if(node); end
  def tail(node); end
end
class RuboCop::Cop::Style::IfInsideElse < RuboCop::Cop::Base
  def allow_if_modifier?; end
  def allow_if_modifier_in_else_branch?(else_branch); end
  def autocorrect(corrector, node); end
  def correct_to_elsif_from_if_inside_else_form(corrector, node, condition); end
  def correct_to_elsif_from_modifier_form(corrector, node); end
  def find_end_range(node); end
  def on_if(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::IfUnlessModifier < RuboCop::Cop::Base
  def another_statement_on_same_line?(node); end
  def autocorrect(corrector, node); end
  def ignored_patterns; end
  def line_length_enabled_at_line?(line); end
  def named_capture_in_condition?(node); end
  def non_eligible_node?(node); end
  def non_simple_if_unless?(node); end
  def on_if(node); end
  def self.autocorrect_incompatible_with; end
  def to_normal_form(node); end
  def too_long_due_to_modifier?(node); end
  def too_long_line_based_on_allow_uri?(line); end
  def too_long_line_based_on_config?(range, line); end
  def too_long_line_based_on_ignore_cop_directives?(range, line); end
  def too_long_single_line?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::IgnoredPattern
  include RuboCop::Cop::LineLengthHelp
  include RuboCop::Cop::StatementModifier
end
class RuboCop::Cop::Style::IfUnlessModifierOfIfUnless < RuboCop::Cop::Base
  def on_if(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::StatementModifier
end
class RuboCop::Cop::Style::IfWithSemicolon < RuboCop::Cop::Base
  def autocorrect(node); end
  def build_else_branch(second_condition); end
  def correct_elsif(node); end
  def on_normal_if_unless(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::OnNormalIfUnless
end
class RuboCop::Cop::Style::ImplicitRuntimeError < RuboCop::Cop::Base
  def implicit_runtime_error_raise_or_fail(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::Style::InfiniteLoop < RuboCop::Cop::Base
  def after_leaving_scope(scope, _variable_table); end
  def assigned_before_loop?(var, range); end
  def assigned_inside_loop?(var, range); end
  def autocorrect(corrector, node); end
  def configured_indent; end
  def modifier_replacement(node); end
  def non_modifier_range(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_while(node); end
  def on_while_post(node); end
  def referenced_after_loop?(var, range); end
  def replace_begin_end_with_modifier(corrector, node); end
  def replace_source(corrector, range, replacement); end
  def self.joining_forces; end
  def while_or_until(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::InverseMethods < RuboCop::Cop::Base
  def camel_case_constant?(node); end
  def correct_inverse_block(corrector, node); end
  def correct_inverse_method(corrector, node); end
  def correct_inverse_selector(block, corrector); end
  def dot_range(loc); end
  def end_parentheses(node, method_call); end
  def inverse_block?(param0 = nil); end
  def inverse_blocks; end
  def inverse_candidate?(param0 = nil); end
  def inverse_methods; end
  def message(method, inverse); end
  def negated?(node); end
  def not_to_receiver(node, method_call); end
  def on_block(node); end
  def on_send(node); end
  def possible_class_hierarchy_check?(lhs, rhs, method); end
  def remove_end_parenthesis(corrector, node, method, method_call); end
  def self.autocorrect_incompatible_with; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::IgnoredNode
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::InlineComment < RuboCop::Cop::Base
  def on_new_investigation; end
end
class RuboCop::Cop::Style::IpAddresses < RuboCop::Cop::Base
  def allowed_addresses; end
  def correct_style_detected; end
  def could_be_ip?(str); end
  def offense?(node); end
  def opposite_style_detected; end
  def starts_with_hex_or_colon?(str); end
  def too_long?(str); end
  include RuboCop::Cop::StringHelp
end
class RuboCop::Cop::Style::KeywordParametersOrder < RuboCop::Cop::Base
  def append_newline_to_last_kwoptarg(arguments, corrector); end
  def on_kwoptarg(node); end
  def remove_kwargs(kwarg_nodes, corrector); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::Lambda < RuboCop::Cop::Base
  def arguments_with_whitespace(node); end
  def autocorrect_method_to_literal(corrector, node); end
  def lambda_arg_string(args); end
  def message(node, selector); end
  def message_line_modifier(node); end
  def offending_selector?(node, selector); end
  def on_block(node); end
  def on_numblock(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::LambdaCall < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def explicit_style?; end
  def implicit_style?; end
  def message(_node); end
  def offense?(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::LineEndConcatenation < RuboCop::Cop::Base
  def autocorrect(corrector, operator_range); end
  def check_token_set(index); end
  def eligible_next_successor?(next_successor); end
  def eligible_operator?(operator); end
  def eligible_predecessor?(predecessor); end
  def eligible_successor?(successor); end
  def eligible_token_set?(predecessor, operator, successor); end
  def on_new_investigation; end
  def self.autocorrect_incompatible_with; end
  def standard_string_literal?(token); end
  def token_after_last_string(successor, base_index); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::MethodCallWithoutArgsParentheses < RuboCop::Cop::Base
  def any_assignment?(node); end
  def default_argument?(node); end
  def ineligible_node?(node); end
  def offense_range(node); end
  def on_send(node); end
  def register_offense(node); end
  def same_name_assignment?(node); end
  def variable_in_mass_assignment?(variable_name, node); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::IgnoredMethods
end
class RuboCop::Cop::Style::MethodCallWithArgsParentheses < RuboCop::Cop::Base
  def args_begin(node); end
  def args_end(node); end
  def args_parenthesized?(node); end
  def on_csend(node); end
  def on_send(node); end
  def on_super(node); end
  def on_yield(node); end
  def self.autocorrect_incompatible_with; end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::IgnoredMethods
  include RuboCop::Cop::IgnoredPattern
  include RuboCop::Cop::Style::MethodCallWithArgsParentheses::OmitParentheses
  include RuboCop::Cop::Style::MethodCallWithArgsParentheses::RequireParentheses
end
module RuboCop::Cop::Style::MethodCallWithArgsParentheses::OmitParentheses
  def allowed_camel_case_method_call?(node); end
  def allowed_chained_call_with_parentheses?(node); end
  def allowed_multiline_call_with_parentheses?(node); end
  def ambigious_literal?(node); end
  def assigned_before?(node, target); end
  def auto_correct(corrector, node); end
  def call_as_argument_or_chain?(node); end
  def call_in_literals?(node); end
  def call_in_logical_operators?(node); end
  def call_in_optional_arguments?(node); end
  def call_in_single_line_inheritance?(node); end
  def call_with_ambiguous_arguments?(node); end
  def call_with_braced_block?(node); end
  def hash_literal?(node); end
  def hash_literal_in_arguments?(node); end
  def inside_endless_method_def?(node); end
  def legitimate_call_with_parentheses?(node); end
  def logical_operator?(node); end
  def offense_range(node); end
  def omit_parentheses(node); end
  def parentheses_at_the_end_of_multiline_call?(node); end
  def regexp_slash_literal?(node); end
  def splat?(node); end
  def super_call_without_arguments?(node); end
  def ternary_if?(node); end
  def unary_literal?(node); end
end
module RuboCop::Cop::Style::MethodCallWithArgsParentheses::RequireParentheses
  def eligible_for_parentheses_omission?(node); end
  def ignored_macro?(node); end
  def included_macros_list; end
  def require_parentheses(node); end
end
class RuboCop::Cop::Style::RedundantAssignment < RuboCop::Cop::Base
  def check_begin_node(node); end
  def check_branch(node); end
  def check_case_node(node); end
  def check_ensure_node(node); end
  def check_if_node(node); end
  def check_rescue_node(node); end
  def on_def(node); end
  def on_defs(node); end
  def redundant_assignment?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RedundantFetchBlock < RuboCop::Cop::Base
  def basic_literal?(node); end
  def build_bad_method(send, body); end
  def build_good_method(send, body); end
  def check_for_constant?; end
  def check_for_string?; end
  def const_type?(node); end
  def fetch_range(send, node); end
  def on_block(node); end
  def rails_cache?(param0 = nil); end
  def redundant_fetch_block_candidate?(param0 = nil); end
  def should_not_check?(send, body); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::FrozenStringLiteral
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::RedundantFileExtensionInRequire < RuboCop::Cop::Base
  def on_send(node); end
  def require_call?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RedundantSelfAssignment < RuboCop::Cop::Base
  def correction_range(node); end
  def method_returning_self?(method_name); end
  def on_cvasgn(node); end
  def on_gvasgn(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def on_send(node); end
  def redundant_assignment?(node); end
  def redundant_nonself_assignment?(param0 = nil, param1, param2); end
  def redundant_self_assignment?(param0 = nil, param1); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::SoleNestedConditional < RuboCop::Cop::Base
  def allow_modifier?; end
  def autocorrect(corrector, node, if_branch); end
  def correct_for_basic_condition_style(corrector, node, if_branch, and_operator); end
  def correct_for_comment(corrector, node, if_branch); end
  def correct_for_guard_condition_style(corrector, node, if_branch, and_operator); end
  def offending_branch?(branch); end
  def on_if(node); end
  def replacement_condition(and_operator, condition); end
  def wrap_condition?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::StaticClass < RuboCop::Cop::Base
  def class_convertible_to_module?(class_node); end
  def class_elements(class_node); end
  def extend_call?(node); end
  def on_class(class_node); end
  def sclass_convertible_to_module?(node); end
  include RuboCop::Cop::VisibilityHelp
end
class RuboCop::Cop::Style::MethodCalledOnDoEndBlock < RuboCop::Cop::Base
  def on_block(node); end
  def on_csend(node); end
  def on_send(node); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::MethodDefParentheses < RuboCop::Cop::Base
  def arguments_without_parentheses?(node); end
  def correct_arguments(arg_node, corrector); end
  def correct_definition(def_node, corrector); end
  def missing_parentheses(node); end
  def on_def(node); end
  def on_defs(node); end
  def require_parentheses?(args); end
  def unwanted_parentheses(args); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::MinMax < RuboCop::Cop::Base
  def argument_range(node); end
  def message(offender, receiver); end
  def min_max_candidate(param0 = nil); end
  def offending_range(node); end
  def on_array(node); end
  def on_return(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::MissingElse < RuboCop::Cop::Base
  def case_style?; end
  def check(node); end
  def empty_else_config; end
  def empty_else_cop_enabled?; end
  def empty_else_style; end
  def if_style?; end
  def message_template; end
  def on_case(node); end
  def on_normal_if_unless(node); end
  def unless_else_config; end
  def unless_else_cop_enabled?; end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::OnNormalIfUnless
end
class RuboCop::Cop::Style::MissingRespondToMissing < RuboCop::Cop::Base
  def implements_respond_to_missing?(node); end
  def on_def(node); end
  def on_defs(node); end
end
class RuboCop::Cop::Style::MixinGrouping < RuboCop::Cop::Base
  def check(send_node); end
  def check_grouped_style(send_node); end
  def check_separated_style(send_node); end
  def group_mixins(node, mixins); end
  def grouped_style?; end
  def on_class(node); end
  def on_module(node); end
  def range_to_remove_for_subsequent_mixin(mixins, node); end
  def separate_mixins(node); end
  def separated_style?; end
  def sibling_mixins(send_node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::MixinUsage < RuboCop::Cop::Base
  def in_top_level_scope?(param0 = nil); end
  def include_statement(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::Style::ModuleFunction < RuboCop::Cop::Base
  def check_extend_self(nodes); end
  def check_forbidden(nodes); end
  def check_module_function(nodes); end
  def each_wrong_style(nodes, &block); end
  def extend_self_node?(param0 = nil); end
  def message(_range); end
  def module_function_node?(param0 = nil); end
  def on_module(node); end
  def private_directive?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::MultilineBlockChain < RuboCop::Cop::Base
  def on_block(node); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::MultilineIfThen < RuboCop::Cop::Base
  def non_modifier_then?(node); end
  def on_normal_if_unless(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::OnNormalIfUnless
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::MultilineIfModifier < RuboCop::Cop::Base
  def configured_indentation_width; end
  def indented_body(body, node); end
  def on_if(node); end
  def to_normal_if(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::StatementModifier
end
class RuboCop::Cop::Style::MultilineMethodSignature < RuboCop::Cop::Base
  def arguments_range(node); end
  def autocorrect(corrector, node); end
  def closing_line(node); end
  def correction_exceeds_max_line_length?(node); end
  def definition_width(node); end
  def indentation_width(node); end
  def max_line_length; end
  def on_def(node); end
  def on_defs(node); end
  def opening_line(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::MultilineMemoization < RuboCop::Cop::Base
  def bad_rhs?(rhs); end
  def keyword_autocorrect(node, corrector); end
  def keyword_begin_str(node, node_buf); end
  def keyword_end_str(node, node_buf); end
  def message(_node); end
  def on_or_asgn(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::MultilineTernaryOperator < RuboCop::Cop::Base
  def offense?(node); end
  def on_if(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::MultilineWhenThen < RuboCop::Cop::Base
  def accept_node_type?(node); end
  def on_when(node); end
  def require_then?(when_node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::MultipleComparison < RuboCop::Cop::Base
  def allow_method_comparison?; end
  def comparison?(node); end
  def nested_comparison?(node); end
  def nested_variable_comparison?(node); end
  def on_new_investigation; end
  def on_or(node); end
  def root_of_or_node(or_node); end
  def simple_comparison_lhs?(param0 = nil); end
  def simple_comparison_rhs?(param0 = nil); end
  def simple_double_comparison?(param0 = nil); end
  def variable_name(node); end
  def variables_in_node(node); end
  def variables_in_simple_node(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::MutableConstant < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def check(value); end
  def correct_splat_expansion(corrector, expr, splat_value); end
  def frozen_regexp_or_range_literals?(node); end
  def frozen_string_literal?(node); end
  def immutable_literal?(node); end
  def mutable_literal?(value); end
  def on_assignment(value); end
  def on_casgn(node); end
  def on_or_asgn(node); end
  def operation_produces_immutable_object?(param0 = nil); end
  def range_enclosed_in_parentheses?(param0 = nil); end
  def requires_parentheses?(node); end
  def splat_value(param0 = nil); end
  def strict_check(value); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::FrozenStringLiteral
end
class RuboCop::Cop::Style::NegatedIf < RuboCop::Cop::Base
  def correct_style?(node); end
  def message(node); end
  def on_if(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::NegativeConditional
end
class RuboCop::Cop::Style::NegatedIfElseCondition < RuboCop::Cop::Base
  def correct_negated_condition(corrector, node); end
  def corrected_ancestor?(node); end
  def double_negation?(param0 = nil); end
  def if_else?(node); end
  def negated_condition?(node); end
  def on_if(node); end
  def on_new_investigation; end
  def self.autocorrect_incompatible_with; end
  def swap_branches(corrector, node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::NegatedUnless < RuboCop::Cop::Base
  def correct_style?(node); end
  def message(node); end
  def on_if(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::NegativeConditional
end
class RuboCop::Cop::Style::NegatedWhile < RuboCop::Cop::Base
  def on_until(node); end
  def on_while(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::NegativeConditional
end
class RuboCop::Cop::Style::NestedModifier < RuboCop::Cop::Base
  def add_parentheses_to_method_arguments(send_node); end
  def autocorrect(corrector, node); end
  def check(node); end
  def left_hand_operand(node, operator); end
  def modifier?(node); end
  def new_expression(inner_node); end
  def on_if(node); end
  def on_until(node); end
  def on_while(node); end
  def replacement_operator(keyword); end
  def requires_parens?(node); end
  def right_hand_operand(node, left_hand_keyword); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::NestedParenthesizedCalls < RuboCop::Cop::Base
  def allowed?(send_node); end
  def allowed_omission?(send_node); end
  def autocorrect(corrector, nested); end
  def on_csend(node); end
  def on_send(node); end
  def self.autocorrect_incompatible_with; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::AllowedMethods
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::NestedTernaryOperator < RuboCop::Cop::Base
  def if_node(node); end
  def on_if(node); end
  def remove_parentheses(source); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::Next < RuboCop::Cop::Base
  def actual_indent(lines, buffer); end
  def allowed_modifier_if?(node); end
  def autocorrect_block(corrector, node); end
  def autocorrect_modifier(corrector, node); end
  def check(node); end
  def cond_range(node, cond); end
  def end_followed_by_whitespace_only?(source_buffer, end_pos); end
  def end_range(node); end
  def ends_with_condition?(body); end
  def exit_body_type?(node); end
  def heredoc_lines(node); end
  def if_else_children?(node); end
  def if_without_else?(node); end
  def offense_location(offense_node); end
  def offense_node(body); end
  def on_block(node); end
  def on_for(node); end
  def on_new_investigation; end
  def on_until(node); end
  def on_while(node); end
  def reindent(lines, node, corrector); end
  def reindent_line(corrector, lineno, delta, buffer); end
  def reindentable_lines(node); end
  def self.autocorrect_incompatible_with; end
  def simple_if_without_break?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::MinBodyLength
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::NilComparison < RuboCop::Cop::Base
  def message(_node); end
  def nil_check?(param0 = nil); end
  def nil_comparison?(param0 = nil); end
  def on_send(node); end
  def prefer_comparison?; end
  def style_check?(node, &block); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::NilLambda < RuboCop::Cop::Base
  def nil_return?(param0 = nil); end
  def on_block(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::NonNilCheck < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def autocorrect_comparison(corrector, node); end
  def autocorrect_non_nil(corrector, node, inner_node); end
  def autocorrect_unless_nil(corrector, node, receiver); end
  def find_offense_node(node); end
  def include_semantic_changes?; end
  def message(node); end
  def nil_check?(param0 = nil); end
  def not_and_nil_check?(param0 = nil); end
  def not_equal_to_nil?(param0 = nil); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
  def unless_and_nil_check?(send_node); end
  def unless_check?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::Not < RuboCop::Cop::Base
  def correct_opposite_method(corrector, range, child); end
  def correct_with_parens(corrector, range, node); end
  def correct_without_parens(corrector, range); end
  def on_send(node); end
  def opposite_method?(child); end
  def requires_parens?(child); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::NumericLiterals < RuboCop::Cop::Base
  def check(node); end
  def format_int_part(int_part); end
  def format_number(node); end
  def max_parameter_name; end
  def min_digits; end
  def on_float(node); end
  def on_int(node); end
  def register_offense(node); end
  def short_group_regex; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableMax
  include RuboCop::Cop::IntegerNode
end
class RuboCop::Cop::Style::NumericLiteralPrefix < RuboCop::Cop::Base
  def format_binary(source); end
  def format_decimal(source); end
  def format_hex(source); end
  def format_octal(source); end
  def format_octal_zero_only(source); end
  def hex_bin_dec_literal_type(literal); end
  def literal_type(node); end
  def message(node); end
  def octal_literal_type(literal); end
  def octal_zero_only?; end
  def on_int(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::IntegerNode
end
class RuboCop::Cop::Style::NumericPredicate < RuboCop::Cop::Base
  def check(node); end
  def comparison(param0 = nil); end
  def invert; end
  def inverted_comparison(param0 = nil); end
  def on_send(node); end
  def parenthesized_source(node); end
  def predicate(param0 = nil); end
  def replacement(numeric, operation); end
  def require_parentheses?(node); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::IgnoredMethods
end
class RuboCop::Cop::Style::OneLineConditional < RuboCop::Cop::Base
  def always_multiline?; end
  def branch_body_indentation; end
  def cannot_replace_to_ternary?(node); end
  def else_branch_to_multiline(else_branch, indentation); end
  def expr_replacement(node); end
  def keyword_with_changed_precedence?(node); end
  def message(node); end
  def method_call_with_changed_precedence?(node); end
  def multiline_replacement(node, indentation = nil); end
  def on_normal_if_unless(node); end
  def replacement(node); end
  def requires_parentheses?(node); end
  def ternary_replacement(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::OnNormalIfUnless
end
class RuboCop::Cop::Style::OrAssignment < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def on_cvasgn(node); end
  def on_gvasgn(node); end
  def on_if(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def take_variable_and_default_from_ternary(node); end
  def take_variable_and_default_from_unless(node); end
  def ternary_assignment?(param0 = nil); end
  def unless_assignment?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::OptionHash < RuboCop::Cop::Base
  def allowlist; end
  def on_args(node); end
  def option_hash(param0 = nil); end
  def super_used?(node); end
  def suspicious_name?(arg_name); end
end
class RuboCop::Cop::Style::OptionalArguments < RuboCop::Cop::Base
  def argument_positions(arguments); end
  def each_misplaced_optional_arg(arguments); end
  def on_def(node); end
end
class RuboCop::Cop::Style::OptionalBooleanParameter < RuboCop::Cop::Base
  def on_def(node); end
  def on_defs(node); end
  include RuboCop::Cop::AllowedMethods
end
class RuboCop::Cop::Style::ParallelAssignment < RuboCop::Cop::Base
  def add_self_to_getters(right_elements); end
  def allowed_lhs?(node); end
  def allowed_masign?(lhs_elements, rhs_elements); end
  def allowed_rhs?(node); end
  def assignment_corrector(node, order); end
  def autocorrect(corrector, node); end
  def find_valid_order(left_elements, right_elements); end
  def implicit_self_getter?(param0 = nil); end
  def modifier_statement?(node); end
  def on_masgn(node); end
  def return_of_method_call?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RescueNode
end
class RuboCop::Cop::Style::ParallelAssignment::AssignmentSorter
  def accesses?(rhs, lhs); end
  def dependency?(lhs, rhs); end
  def initialize(assignments); end
  def matching_calls(param0, param1, param2); end
  def tsort_each_child(assignment); end
  def tsort_each_node(&block); end
  def uses_var?(param0, param1); end
  def var_name(param0 = nil); end
  extend RuboCop::AST::NodePattern::Macros
  include TSort
end
class RuboCop::Cop::Style::ParallelAssignment::GenericCorrector
  def assignment; end
  def config; end
  def cop_config; end
  def correction; end
  def correction_range; end
  def extract_sources(node); end
  def initialize(node, config, new_elements); end
  def node; end
  def source(node); end
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Style::ParallelAssignment::RescueCorrector < RuboCop::Cop::Style::ParallelAssignment::GenericCorrector
  def begin_correction(rescue_result); end
  def correction; end
  def correction_range; end
  def def_correction(rescue_result); end
end
class RuboCop::Cop::Style::ParallelAssignment::ModifierCorrector < RuboCop::Cop::Style::ParallelAssignment::GenericCorrector
  def correction; end
  def correction_range; end
  def modifier_range(node); end
end
class RuboCop::Cop::Style::ParenthesesAroundCondition < RuboCop::Cop::Base
  def allow_multiline_conditions?; end
  def control_op_condition(param0 = nil); end
  def message(node); end
  def modifier_op?(node); end
  def on_if(node); end
  def on_until(node); end
  def on_while(node); end
  def parens_allowed?(node); end
  def process_control_op(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Parentheses
  include RuboCop::Cop::SafeAssignment
end
class RuboCop::Cop::Style::PercentLiteralDelimiters < RuboCop::Cop::Base
  def contains_delimiter?(node, delimiters); end
  def contains_preferred_delimiter?(node, type); end
  def include_same_character_as_used_for_delimiter?(node, type); end
  def matchpairs(begin_delimiter); end
  def message(type); end
  def on_array(node); end
  def on_dstr(node); end
  def on_percent_literal(node); end
  def on_regexp(node); end
  def on_str(node); end
  def on_sym(node); end
  def on_xstr(node); end
  def preferred_delimiters_for(type); end
  def string_source(node); end
  def uses_preferred_delimiter?(node, type); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Style::PercentQLiterals < RuboCop::Cop::Base
  def correct_literal_style?(node); end
  def corrected(src); end
  def message(_range); end
  def on_percent_literal(node); end
  def on_str(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Style::PerlBackrefs < RuboCop::Cop::Base
  def derived_from_braceless_interpolation?(node); end
  def format_message(node:, preferred_expression:); end
  def on_back_ref(node); end
  def on_back_ref_or_gvar_or_nth_ref(node); end
  def on_gvar(node); end
  def on_nth_ref(node); end
  def original_expression_of(node); end
  def preferred_expression_to(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::PreferredHashMethods < RuboCop::Cop::Base
  def message(method_name); end
  def offending_selector?(method_name); end
  def on_csend(node); end
  def on_send(node); end
  def proper_method_name(method_name); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::Proc < RuboCop::Cop::Base
  def on_block(node); end
  def proc_new?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RaiseArgs < RuboCop::Cop::Base
  def acceptable_exploded_args?(args); end
  def allowed_non_exploded_type?(arg); end
  def check_compact(node); end
  def check_exploded(node); end
  def correction_compact_to_exploded(node); end
  def correction_exploded_to_compact(node); end
  def on_send(node); end
  def requires_parens?(parent); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::RandomWithOffset < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def boundaries_from_random_node(random_node); end
  def corrected_integer_op_rand(node); end
  def corrected_rand_modified(node); end
  def corrected_rand_op_integer(node); end
  def integer_op_rand?(param0 = nil); end
  def on_send(node); end
  def prefix_from_prefix_node(node); end
  def rand_modified?(param0 = nil); end
  def rand_op_integer?(param0 = nil); end
  def random_call(param0 = nil); end
  def to_int(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RedundantArgument < RuboCop::Cop::Base
  def argument_range(node); end
  def on_send(node); end
  def redundant_arg_for_method(method_name); end
  def redundant_argument?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::RedundantBegin < RuboCop::Cop::Base
  def contain_rescue_or_ensure?(node); end
  def on_block(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_kwbegin(node); end
  def register_offense(node); end
  def valid_context_using_only_begin?(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RedundantCapitalW < RuboCop::Cop::Base
  def on_array(node); end
  def on_percent_literal(node); end
  def requires_interpolation?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Style::RedundantCondition < RuboCop::Cop::Base
  def correct_ternary(corrector, node); end
  def else_source(else_branch); end
  def make_ternary_form(node); end
  def message(node); end
  def offense?(node); end
  def on_if(node); end
  def range_of_offense(node); end
  def require_parentheses?(node); end
  def use_hash_key_assignment?(else_branch); end
  def use_if_branch?(else_branch); end
  def without_argument_parentheses_method?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::RedundantConditional < RuboCop::Cop::Base
  def configured_indentation_width; end
  def indented_else_node(expression, node); end
  def invert_expression?(node); end
  def message(node); end
  def offense?(node); end
  def on_if(node); end
  def redundant_condition?(param0 = nil); end
  def redundant_condition_inverted?(param0 = nil); end
  def replacement_condition(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Style::RedundantException < RuboCop::Cop::Base
  def compact?(param0 = nil); end
  def exploded?(param0 = nil); end
  def fix_compact(node); end
  def fix_exploded(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RedundantFreeze < RuboCop::Cop::Base
  def immutable_literal?(node); end
  def on_send(node); end
  def operation_produces_immutable_object?(param0 = nil); end
  def strip_parenthesis(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::FrozenStringLiteral
end
class RuboCop::Cop::Style::RedundantInterpolation < RuboCop::Cop::Base
  def autocorrect_other(corrector, embedded_node, node); end
  def autocorrect_single_variable_interpolation(corrector, embedded_node, node); end
  def autocorrect_variable_interpolation(corrector, embedded_node, node); end
  def embedded_in_percent_array?(node); end
  def implicit_concatenation?(node); end
  def interpolation?(node); end
  def on_dstr(node); end
  def self.autocorrect_incompatible_with; end
  def single_interpolation?(node); end
  def single_variable_interpolation?(node); end
  def variable_interpolation?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::PercentLiteral
end
class RuboCop::Cop::Style::RedundantParentheses < RuboCop::Cop::Base
  def allowed_ancestor?(node); end
  def allowed_array_or_hash_element?(node); end
  def allowed_expression?(node); end
  def allowed_method_call?(node); end
  def allowed_multiple_expression?(node); end
  def arg_in_call_with_block?(param0 = nil); end
  def array_element?(node); end
  def call_chain_starts_with_int?(begin_node, send_node); end
  def check(begin_node); end
  def check_send(begin_node, node); end
  def check_unary(begin_node, node); end
  def disallowed_literal?(begin_node, node); end
  def empty_parentheses?(node); end
  def first_arg_begins_with_hash_literal?(node); end
  def first_argument?(node); end
  def first_send_argument?(param0 = nil); end
  def first_super_argument?(param0 = nil); end
  def first_yield_argument?(param0 = nil); end
  def hash_element?(node); end
  def ignore_syntax?(node); end
  def interpolation?(param0 = nil); end
  def keyword_ancestor?(node); end
  def keyword_with_redundant_parentheses?(node); end
  def like_method_argument_parentheses?(node); end
  def method_call_with_redundant_parentheses?(node); end
  def method_chain_begins_with_hash_literal?(node); end
  def method_node_and_args(param0 = nil); end
  def offense(node, msg); end
  def on_begin(node); end
  def only_begin_arg?(args); end
  def only_closing_paren_before_comma?(node); end
  def parens_allowed?(node); end
  def raised_to_power_negative_numeric?(begin_node, node); end
  def range_end?(param0 = nil); end
  def rescue?(param0 = nil); end
  def square_brackets?(param0 = nil); end
  def suspect_unary?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Parentheses
end
class RuboCop::Cop::Style::RedundantPercentQ < RuboCop::Cop::Base
  def acceptable_capital_q?(node); end
  def acceptable_q?(node); end
  def allowed_percent_q?(node); end
  def check(node); end
  def interpolated_quotes?(node); end
  def message(node); end
  def on_dstr(node); end
  def on_str(node); end
  def start_with_percent_q_variant?(string); end
  def string_literal?(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RedundantRegexpCharacterClass < RuboCop::Cop::Base
  def backslash_b?(elem); end
  def each_redundant_character_class(node); end
  def each_single_element_character_class(node); end
  def on_regexp(node); end
  def redundant_single_element_character_class?(node, char_class); end
  def requires_escape_outside_char_class?(elem); end
  def whitespace_in_free_space_mode?(node, elem); end
  def without_character_class(loc); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RedundantRegexpEscape < RuboCop::Cop::Base
  def allowed_escape?(node, char, within_character_class); end
  def delimiter?(node, char); end
  def each_escape(node); end
  def escape_range_at_index(node, index); end
  def on_regexp(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::RedundantReturn < RuboCop::Cop::Base
  def add_braces(corrector, node); end
  def add_brackets(corrector, node); end
  def allow_multiple_return_values?; end
  def check_begin_node(node); end
  def check_branch(node); end
  def check_case_node(node); end
  def check_ensure_node(node); end
  def check_if_node(node); end
  def check_resbody_node(node); end
  def check_rescue_node(node); end
  def check_return_node(node); end
  def correct_with_arguments(return_node, corrector); end
  def correct_without_arguments(return_node, corrector); end
  def hash_without_braces?(node); end
  def message(node); end
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::RedundantSelf < RuboCop::Cop::Base
  def add_lhs_to_local_variables_scopes(rhs, lhs); end
  def add_scope(node, local_variables = nil); end
  def allow_self(node); end
  def allowed_send_node?(node); end
  def initialize(config = nil, options = nil); end
  def on_and_asgn(node); end
  def on_args(node); end
  def on_argument(node); end
  def on_block(node); end
  def on_blockarg(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_op_asgn(node); end
  def on_or_asgn(node); end
  def on_send(node); end
  def regular_method_call?(node); end
  def self.autocorrect_incompatible_with; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::RedundantSort < RuboCop::Cop::Base
  def accessor_start(node); end
  def arg_node(node); end
  def arg_value(node); end
  def autocorrect(corrector, node, sort_node, sorter, accessor); end
  def base(accessor, arg); end
  def message(node, sorter, accessor); end
  def offense_range(sort_node, ancestor); end
  def on_send(node); end
  def redundant_sort?(param0 = nil); end
  def suffix(sorter); end
  def suggestion(sorter, accessor, arg); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::RedundantSortBy < RuboCop::Cop::Base
  def on_block(node); end
  def redundant_sort_by(param0 = nil); end
  def sort_by_range(send, node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::RegexpLiteral < RuboCop::Cop::Base
  def allow_inner_slashes?; end
  def allowed_mixed_percent_r?(node); end
  def allowed_mixed_slash?(node); end
  def allowed_percent_r_literal?(node); end
  def allowed_slash_literal?(node); end
  def calculate_replacement(node); end
  def contains_disallowed_slash?(node); end
  def contains_slash?(node); end
  def correct_delimiters(node, corrector); end
  def correct_inner_slashes(node, corrector); end
  def inner_slash_after_correction(node); end
  def inner_slash_before_correction(node); end
  def inner_slash_for(opening_delimiter); end
  def inner_slash_indices(node); end
  def node_body(node, include_begin_nodes: nil); end
  def on_regexp(node); end
  def preferred_delimiters; end
  def slash_literal?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::RescueModifier < RuboCop::Cop::Cop
  def autocorrect(node); end
  def corrected_block(node, parenthesized); end
  def indentation_and_offset(node, parenthesized); end
  def on_resbody(node); end
  def parenthesized?(node); end
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::RescueNode
end
class RuboCop::Cop::Style::RescueStandardError < RuboCop::Cop::Base
  def offense_for_exlicit_enforced_style(node); end
  def offense_for_implicit_enforced_style(node, error); end
  def on_resbody(node); end
  def rescue_standard_error?(param0 = nil); end
  def rescue_without_error_class?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::RescueNode
end
class RuboCop::Cop::Style::ReturnNil < RuboCop::Cop::Base
  def chained_send?(param0 = nil); end
  def correct_style?(node); end
  def define_method?(param0 = nil); end
  def message(_node); end
  def on_return(node); end
  def return_nil_node?(param0 = nil); end
  def return_node?(param0 = nil); end
  def scoped_node?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::SafeNavigation < RuboCop::Cop::Base
  def add_safe_nav_to_all_methods_in_chain(corrector, start_method, method_chain); end
  def allowed_if_condition?(node); end
  def autocorrect(corrector, node); end
  def begin_range(node, method_call); end
  def chain_size(method_chain, method); end
  def check_node(node); end
  def comments(node); end
  def end_range(node, method_call); end
  def extract_common_parts(method_chain, checked_variable); end
  def extract_parts(node); end
  def extract_parts_from_and(node); end
  def extract_parts_from_if(node); end
  def find_matching_receiver_invocation(method_chain, checked_variable); end
  def handle_comments(corrector, node, method_call); end
  def method_call(node); end
  def method_called?(send_node); end
  def modifier_if_safe_navigation_candidate(param0 = nil); end
  def negated?(send_node); end
  def not_nil_check?(param0 = nil); end
  def on_and(node); end
  def on_if(node); end
  def relevant_comment_ranges(node); end
  def unsafe_method?(send_node); end
  def unsafe_method_used?(method_chain, method); end
  def use_var_only_in_unless_modifier?(node, variable); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::NilMethods
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::Sample < RuboCop::Cop::Base
  def correction(shuffle_arg, method, method_args); end
  def extract_source(args); end
  def message(shuffle_arg, method, method_args, range); end
  def offensive?(method, method_args); end
  def on_send(node); end
  def range_size(range_node); end
  def sample_arg(method, method_args); end
  def sample_candidate?(param0 = nil); end
  def sample_size(method_args); end
  def sample_size_for_one_arg(arg); end
  def sample_size_for_two_args(first, second); end
  def source_range(shuffle_node, node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::SelfAssignment < RuboCop::Cop::Base
  def apply_autocorrect(corrector, node, rhs, operator, new_rhs); end
  def autocorrect(corrector, node); end
  def autocorrect_boolean_node(corrector, node, rhs); end
  def autocorrect_send_node(corrector, node, rhs); end
  def check(node, var_type); end
  def check_boolean_node(node, rhs, var_name, var_type); end
  def check_send_node(node, rhs, var_name, var_type); end
  def on_cvasgn(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def self.autocorrect_incompatible_with; end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::Semicolon < RuboCop::Cop::Base
  def check_for_line_terminator_or_opener; end
  def convention_on(line, column, autocorrect); end
  def each_semicolon; end
  def on_begin(node); end
  def on_new_investigation; end
  def tokens_for_lines; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::Send < RuboCop::Cop::Base
  def on_csend(node); end
  def on_send(node); end
end
class RuboCop::Cop::Style::SignalException < RuboCop::Cop::Base
  def allow(method_name, node); end
  def autocorrect(corrector, node); end
  def check_scope(method_name, node); end
  def check_send(method_name, node); end
  def command_or_kernel_call?(name, node); end
  def custom_fail_methods(param0); end
  def each_command_or_kernel_call(method_name, node); end
  def kernel_call?(param0 = nil, param1); end
  def message(method_name); end
  def on_new_investigation; end
  def on_rescue(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::SingleArgumentDig < RuboCop::Cop::Base
  def on_send(node); end
  def single_argument_dig?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::SingleLineBlockParams < RuboCop::Cop::Base
  def args_match?(method_name, args); end
  def autocorrect(corrector, node, preferred_block_arguments, joined_block_arguments); end
  def build_preferred_arguments_map(node, preferred_arguments); end
  def eligible_arguments?(node); end
  def eligible_method?(node); end
  def method_name(method); end
  def method_names; end
  def methods; end
  def on_block(node); end
  def target_args(method_name); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::SingleLineMethods < RuboCop::Cop::Base
  def allow_empty?; end
  def autocorrect(corrector, node); end
  def correct_to_endless(corrector, node); end
  def correct_to_endless?(body_node); end
  def correct_to_multiline(corrector, node); end
  def each_part(body); end
  def move_comment(node, corrector); end
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Alignment
end
class RuboCop::Cop::Style::SlicingWithRange < RuboCop::Cop::Base
  def on_send(node); end
  def range_till_minus_one?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::TargetRubyVersion
end
class RuboCop::Cop::Style::SpecialGlobalVars < RuboCop::Cop::Base
  def autocorrect(corrector, node, global_var); end
  def english_name_replacement(preferred_name, node); end
  def format_english_message(global_var); end
  def format_list(items); end
  def format_message(english, regular, global); end
  def message(global_var); end
  def on_gvar(node); end
  def preferred_names(global); end
  def replacement(node, global_var); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::StabbyLambdaParentheses < RuboCop::Cop::Base
  def message(_node); end
  def missing_parentheses?(node); end
  def missing_parentheses_corrector(corrector, node); end
  def on_send(node); end
  def parentheses?(node); end
  def redundant_parentheses?(node); end
  def stabby_lambda_with_args?(node); end
  def unwanted_parentheses_corrector(corrector, node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::Style::StderrPuts < RuboCop::Cop::Base
  def message(node); end
  def on_send(node); end
  def stderr_gvar?(sym); end
  def stderr_puts?(param0 = nil); end
  def stderr_puts_range(send); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::StringConcatenation < RuboCop::Cop::Base
  def collect_parts(node, parts); end
  def corrected_ancestor?(node); end
  def find_topmost_plus_node(node); end
  def handle_quotes(parts); end
  def line_end_concatenation?(node); end
  def on_new_investigation; end
  def on_send(node); end
  def plus_node?(node); end
  def replacement(parts); end
  def single_quoted?(str_node); end
  def string_concatenation?(param0 = nil); end
  def uncorrectable?(part); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Util
end
class RuboCop::Cop::Style::StringHashKeys < RuboCop::Cop::Base
  def on_pair(node); end
  def receive_environments_method?(param0 = nil); end
  def string_hash_key?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::StringLiterals < RuboCop::Cop::Base
  def accept_child_double_quotes?(nodes); end
  def all_string_literals?(nodes); end
  def autocorrect(corrector, node); end
  def check_multiline_quote_style(node, quote); end
  def consistent_multiline?; end
  def detect_quote_styles(node); end
  def message(_node); end
  def offense?(node); end
  def on_dstr(node); end
  def register_offense(node, message: nil); end
  def unexpected_double_quotes?(quote); end
  def unexpected_single_quotes?(quote); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::StringLiteralsHelp
end
class RuboCop::Cop::Style::StringLiteralsInInterpolation < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def message(_node); end
  def offense?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::StringLiteralsHelp
end
class RuboCop::Cop::Style::StringMethods < RuboCop::Cop::Base
  def on_csend(node); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::MethodPreference
end
class RuboCop::Cop::Style::Strip < RuboCop::Cop::Base
  def lstrip_rstrip(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::StructInheritance < RuboCop::Cop::Base
  def correct_parent(parent, corrector); end
  def on_class(node); end
  def struct_constructor?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::SwapValues < RuboCop::Cop::Base
  def allowed_assignment?(node); end
  def correction_range(tmp_assign, y_assign); end
  def lhs(node); end
  def message(x_assign, y_assign); end
  def on_asgn(node); end
  def on_casgn(node); end
  def on_cvasgn(node); end
  def on_gvasgn(node); end
  def on_ivasgn(node); end
  def on_lvasgn(node); end
  def replacement(x_assign); end
  def rhs(node); end
  def simple_assignment?(node); end
  def swapping_values?(tmp_assign, x_assign, y_assign); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::SymbolArray < RuboCop::Cop::Base
  def correct_bracketed(corrector, node); end
  def on_array(node); end
  def self.largest_brackets; end
  def self.largest_brackets=(arg0); end
  def symbol_without_quote?(string); end
  def symbols_contain_spaces?(node); end
  def to_symbol_literal(string); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ArrayMinSize
  include RuboCop::Cop::ArraySyntax
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::PercentArray
end
class RuboCop::Cop::Style::SymbolLiteral < RuboCop::Cop::Base
  def on_sym(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::SymbolProc < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def autocorrect_with_args(corrector, node, args, method_name); end
  def autocorrect_without_args(corrector, node); end
  def begin_pos_for_replacement(node); end
  def block_range_with_space(node); end
  def destructuring_block_argument?(argument_node); end
  def on_block(node); end
  def on_numblock(node); end
  def proc_node?(param0 = nil); end
  def register_offense(node, method_name, block_method_name); end
  def self.autocorrect_incompatible_with; end
  def symbol_proc?(param0 = nil); end
  def symbol_proc_receiver?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
  extend RuboCop::Cop::IgnoredMethods::Config
  include RuboCop::Cop::IgnoredMethods
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::TernaryParentheses < RuboCop::Cop::Base
  def autocorrect(corrector, node); end
  def below_ternary_precedence?(child); end
  def complex_condition?(condition); end
  def correct_parenthesized(corrector, condition); end
  def correct_unparenthesized(corrector, condition); end
  def infinite_loop?; end
  def message(node); end
  def method_name(param0 = nil); end
  def non_complex_expression?(condition); end
  def non_complex_send?(node); end
  def offense?(node); end
  def on_if(node); end
  def only_closing_parenthesis_is_last_line?(condition); end
  def parenthesized?(node); end
  def redundant_parentheses_enabled?; end
  def require_parentheses?; end
  def require_parentheses_when_complex?; end
  def unparenthesized_method_call?(child); end
  def unsafe_autocorrect?(condition); end
  def whitespace_after?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::SafeAssignment
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Style::TrailingBodyOnClass < RuboCop::Cop::Base
  def on_class(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::TrailingBody
end
class RuboCop::Cop::Style::TrailingBodyOnMethodDefinition < RuboCop::Cop::Base
  def on_def(node); end
  def on_defs(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::TrailingBody
end
class RuboCop::Cop::Style::TrailingBodyOnModule < RuboCop::Cop::Base
  def on_module(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Alignment
  include RuboCop::Cop::TrailingBody
end
class RuboCop::Cop::Style::TrailingCommaInArguments < RuboCop::Cop::Base
  def on_csend(node); end
  def on_send(node); end
  def self.autocorrect_incompatible_with; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::TrailingComma
end
class RuboCop::Cop::Style::TrailingCommaInArrayLiteral < RuboCop::Cop::Base
  def on_array(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::TrailingComma
end
class RuboCop::Cop::Style::TrailingCommaInBlockArgs < RuboCop::Cop::Base
  def arg_count(node); end
  def argument_tokens(node); end
  def last_comma(node); end
  def on_block(node); end
  def trailing_comma?(node); end
  def useless_trailing_comma?(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::TrailingCommaInHashLiteral < RuboCop::Cop::Base
  def on_hash(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::TrailingComma
end
class RuboCop::Cop::Style::TrailingMethodEndStatement < RuboCop::Cop::Base
  def body_and_end_on_same_line?(node); end
  def on_def(node); end
  def trailing_end?(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::TrailingUnderscoreVariable < RuboCop::Cop::Base
  def allow_named_underscore_variables; end
  def children_offenses(variables); end
  def find_first_offense(variables); end
  def find_first_possible_offense(variables); end
  def main_node_offense(node); end
  def on_masgn(node); end
  def range_for_parentheses(offense, left); end
  def reverse_index(collection, item); end
  def splat_variable_before?(first_offense, variables); end
  def unneeded_ranges(node); end
  def unused_range(node_type, mlhs_node, right); end
  def unused_variables_only?(offense, variables); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
  include RuboCop::Cop::SurroundingSpace
end
class RuboCop::Cop::Style::TrivialAccessors < RuboCop::Cop::Base
  def accessor(kind, method_name); end
  def allow_dsl_writers?; end
  def allow_predicates?; end
  def allowed_method_name?(node); end
  def allowed_method_names; end
  def allowed_reader?(node); end
  def allowed_writer?(method_name); end
  def autocorrect(corrector, node); end
  def autocorrect_class(corrector, node); end
  def autocorrect_instance(corrector, node); end
  def dsl_writer?(method_name); end
  def exact_name_match?; end
  def ignore_class_methods?; end
  def in_module_or_instance_eval?(node); end
  def looks_like_trivial_reader?(node); end
  def looks_like_trivial_writer?(param0 = nil); end
  def names_match?(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_method_def(node); end
  def top_level_node?(node); end
  def trivial_accessor_kind(node); end
  def trivial_reader?(node); end
  def trivial_writer?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::AllowedMethods
end
class RuboCop::Cop::Style::UnlessElse < RuboCop::Cop::Base
  def on_if(node); end
  def range_between_condition_and_else(node, condition); end
  def range_between_else_and_end(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::UnpackFirst < RuboCop::Cop::Base
  def first_element_range(node, unpack_call); end
  def on_send(node); end
  def unpack_and_first_element?(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::VariableInterpolation < RuboCop::Cop::Base
  def message(range); end
  def on_node_with_interpolations(node); end
  def var_nodes(nodes); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::Interpolation
end
class RuboCop::Cop::Style::WhenThen < RuboCop::Cop::Base
  def on_when(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::WhileUntilDo < RuboCop::Cop::Base
  def on_until(node); end
  def on_while(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Style::WhileUntilModifier < RuboCop::Cop::Base
  def on_until(node); end
  def on_while(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::StatementModifier
end
class RuboCop::Cop::Style::WordArray < RuboCop::Cop::Base
  def complex_content?(strings); end
  def correct_bracketed(corrector, node); end
  def on_array(node); end
  def self.largest_brackets; end
  def self.largest_brackets=(arg0); end
  def word_regex; end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ArrayMinSize
  include RuboCop::Cop::ArraySyntax
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::PercentArray
end
class RuboCop::Cop::Style::YodaCondition < RuboCop::Cop::Base
  def actual_code_range(node); end
  def corrected_code(node); end
  def enforce_yoda?; end
  def equality_only?; end
  def file_constant_equal_program_name?(param0 = nil); end
  def interpolation?(node); end
  def message(node); end
  def non_equality_operator?(node); end
  def noncommutative_operator?(node); end
  def on_send(node); end
  def program_name?(name); end
  def reverse_comparison(operator); end
  def source_file_path_constant?(node); end
  def valid_yoda?(node); end
  def yoda_compatible_condition?(node); end
  extend RuboCop::Cop::AutoCorrector
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::Style::ZeroLengthPredicate < RuboCop::Cop::Base
  def check_nonzero_length_predicate(node); end
  def check_zero_length_predicate(node); end
  def non_polymorphic_collection?(param0 = nil); end
  def nonzero_length_predicate(param0 = nil); end
  def on_send(node); end
  def other_receiver(param0 = nil); end
  def replacement(node); end
  def zero_length_predicate(param0 = nil); end
  def zero_length_receiver(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
module RuboCop::Cop::Security
end
class RuboCop::Cop::Security::Eval < RuboCop::Cop::Base
  def eval?(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::Security::JSONLoad < RuboCop::Cop::Base
  def json_load(param0 = nil); end
  def on_send(node); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Security::MarshalLoad < RuboCop::Cop::Base
  def marshal_load(param0 = nil); end
  def on_send(node); end
end
class RuboCop::Cop::Security::Open < RuboCop::Cop::Base
  def composite_string?(node); end
  def concatenated_string?(node); end
  def interpolated_string?(node); end
  def on_send(node); end
  def open?(param0 = nil); end
  def safe?(node); end
  def safe_argument?(argument); end
  def simple_string?(node); end
end
class RuboCop::Cop::Security::YAMLLoad < RuboCop::Cop::Base
  def on_send(node); end
  def yaml_load(param0 = nil); end
  extend RuboCop::Cop::AutoCorrector
end
class RuboCop::Cop::Team
  def autocorrect(processed_source, report); end
  def autocorrect?; end
  def autocorrect_report(report); end
  def be_ready; end
  def collate_corrections(report); end
  def cops; end
  def debug?; end
  def each_corrector(report); end
  def errors; end
  def external_dependency_checksum; end
  def forces; end
  def handle_error(error, location, cop); end
  def handle_warning(error, location); end
  def initialize(cops, config = nil, options = nil); end
  def inspect_file(processed_source); end
  def investigate(processed_source); end
  def investigate_partial(cops, processed_source); end
  def process_errors(file, errors); end
  def reset; end
  def roundup_relevant_cops(filename); end
  def self.forces_for(cops); end
  def self.mobilize(cop_classes, config, options = nil); end
  def self.mobilize_cops(cop_classes, config, options = nil); end
  def self.new(cop_or_classes, config, options = nil); end
  def support_target_rails_version?(cop); end
  def support_target_ruby_version?(cop); end
  def suppress_clobbering; end
  def updated_source_file; end
  def updated_source_file?; end
  def validate_config; end
  def warnings; end
end
module RuboCop::Formatter
end
class RuboCop::Formatter::BaseFormatter
  def file_finished(file, offenses); end
  def file_started(file, options); end
  def finished(inspected_files); end
  def initialize(output, options = nil); end
  def options; end
  def output; end
  def started(target_files); end
end
module RuboCop::Formatter::Colorizable
  def black(string); end
  def blue(string); end
  def colorize(string, *args); end
  def cyan(string); end
  def green(string); end
  def magenta(string); end
  def rainbow; end
  def red(string); end
  def white(string); end
  def yellow(string); end
end
module RuboCop::Formatter::TextUtil
  def pluralize(number, thing, options = nil); end
  def self.pluralize(number, thing, options = nil); end
end
class RuboCop::Formatter::SimpleTextFormatter < RuboCop::Formatter::BaseFormatter
  def annotate_message(msg); end
  def colored_severity_code(offense); end
  def count_stats(offenses); end
  def file_finished(file, offenses); end
  def finished(inspected_files); end
  def message(offense); end
  def report_file(file, offenses); end
  def report_summary(file_count, offense_count, correction_count, correctable_count); end
  def started(_target_files); end
  include RuboCop::Formatter::Colorizable
  include RuboCop::PathUtil
end
class RuboCop::Formatter::SimpleTextFormatter::Report
  def correctable; end
  def corrections; end
  def files; end
  def initialize(file_count, offense_count, correction_count, correctable_count, rainbow, safe_auto_correct: nil); end
  def offenses; end
  def rainbow; end
  def summary; end
  include RuboCop::Formatter::Colorizable
  include RuboCop::Formatter::TextUtil
end
class RuboCop::Formatter::ClangStyleFormatter < RuboCop::Formatter::SimpleTextFormatter
  def report_file(file, offenses); end
  def report_highlighted_area(highlighted_area); end
  def report_line(location); end
  def report_offense(file, offense); end
  def valid_line?(offense); end
end
class RuboCop::Formatter::DisabledConfigFormatter < RuboCop::Formatter::BaseFormatter
  def command; end
  def cop_config_params(default_cfg, cfg); end
  def default_config(cop_name); end
  def excludes(offending_files, cop_name, parent); end
  def file_finished(file, offenses); end
  def file_started(_file, _file_info); end
  def finished(_inspected_files); end
  def initialize(output, options = nil); end
  def merge_mode_for_exclude?(cfg); end
  def output_cop(cop_name, offense_count); end
  def output_cop_comments(output_buffer, cfg, cop_name, offense_count); end
  def output_cop_config(output_buffer, cfg, cop_name); end
  def output_cop_param_comments(output_buffer, params, default_cfg); end
  def output_exclude_list(output_buffer, offending_files, cop_name); end
  def output_exclude_path(output_buffer, exclude_path, parent); end
  def output_offending_files(output_buffer, cfg, cop_name); end
  def output_offenses; end
  def self.config_to_allow_offenses; end
  def self.config_to_allow_offenses=(arg0); end
  def self.detected_styles; end
  def self.detected_styles=(arg0); end
  def set_max(cfg, cop_name); end
  def show_offense_counts?; end
  def show_timestamp?; end
  def timestamp; end
  include RuboCop::PathUtil
end
class RuboCop::Formatter::EmacsStyleFormatter < RuboCop::Formatter::BaseFormatter
  def file_finished(file, offenses); end
  def message(offense); end
end
class RuboCop::Formatter::FileListFormatter < RuboCop::Formatter::BaseFormatter
  def file_finished(file, offenses); end
end
class RuboCop::Formatter::FuubarStyleFormatter < RuboCop::Formatter::ClangStyleFormatter
  def count_stats(offenses); end
  def file_finished(file, offenses); end
  def initialize(*output); end
  def progressbar_color; end
  def started(target_files); end
  def with_color; end
end
class RuboCop::Formatter::GitHubActionsFormatter < RuboCop::Formatter::BaseFormatter
  def file_finished(file, offenses); end
  def github_escape(string); end
  def github_severity(offense); end
  def minimum_severity_to_fail; end
  def report_offense(file, offense); end
end
class RuboCop::Formatter::HTMLFormatter < RuboCop::Formatter::BaseFormatter
  def file_finished(file, offenses); end
  def files; end
  def finished(inspected_files); end
  def initialize(output, options = nil); end
  def render_html; end
  def started(target_files); end
  def summary; end
end
class RuboCop::Formatter::HTMLFormatter::Color < Struct
  def alpha; end
  def alpha=(_); end
  def blue; end
  def blue=(_); end
  def fade_out(amount); end
  def green; end
  def green=(_); end
  def red; end
  def red=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def to_s; end
end
class RuboCop::Formatter::HTMLFormatter::ERBContext
  def base64_encoded_logo_image; end
  def binding; end
  def decorated_message(offense); end
  def escape(string); end
  def files; end
  def highlighted_source_line(offense); end
  def hightlight_source_tag(offense); end
  def initialize(files, summary); end
  def possible_ellipses(location); end
  def source_after_highlight(offense); end
  def source_before_highlight(offense); end
  def summary; end
  include RuboCop::Formatter::TextUtil
  include RuboCop::PathUtil
end
class RuboCop::Formatter::JSONFormatter < RuboCop::Formatter::BaseFormatter
  def file_finished(file, offenses); end
  def finished(inspected_files); end
  def hash_for_file(file, offenses); end
  def hash_for_location(offense); end
  def hash_for_offense(offense); end
  def initialize(output, options = nil); end
  def metadata_hash; end
  def output_hash; end
  def started(target_files); end
  include RuboCop::PathUtil
end
class RuboCop::Formatter::JUnitFormatter < RuboCop::Formatter::BaseFormatter
  def add_failure_to(testcase, offenses, cop_name); end
  def classname_attribute_value(file); end
  def file_finished(file, offenses); end
  def finished(_inspected_files); end
  def initialize(output, options = nil); end
  def offenses_for_cop(all_offenses, cop); end
  def relevant_for_output?(options, target_offenses); end
end
class RuboCop::Formatter::OffenseCountFormatter < RuboCop::Formatter::BaseFormatter
  def file_finished(_file, offenses); end
  def finished(_inspected_files); end
  def offense_counts; end
  def ordered_offense_counts(offense_counts); end
  def report_summary(offense_counts); end
  def started(target_files); end
  def total_offense_count(offense_counts); end
end
class RuboCop::Formatter::ProgressFormatter < RuboCop::Formatter::ClangStyleFormatter
  def file_finished(file, offenses); end
  def finished(inspected_files); end
  def initialize(output, options = nil); end
  def report_file_as_mark(offenses); end
  def started(target_files); end
  include RuboCop::Formatter::TextUtil
end
class RuboCop::Formatter::QuietFormatter < RuboCop::Formatter::SimpleTextFormatter
  def report_summary(file_count, offense_count, correction_count, correctable_count); end
end
class RuboCop::Formatter::TapFormatter < RuboCop::Formatter::ClangStyleFormatter
  def annotate_message(msg); end
  def file_finished(file, offenses); end
  def message(offense); end
  def report_highlighted_area(highlighted_area); end
  def report_line(location); end
  def report_offense(file, offense); end
  def started(target_files); end
end
class RuboCop::Formatter::WorstOffendersFormatter < RuboCop::Formatter::BaseFormatter
  def file_finished(file, offenses); end
  def finished(_inspected_files); end
  def offense_counts; end
  def ordered_offense_counts(offense_counts); end
  def report_summary(offense_counts); end
  def started(target_files); end
  def total_offense_count(offense_counts); end
end
class RuboCop::Formatter::PacmanFormatter < RuboCop::Formatter::ClangStyleFormatter
  def cols; end
  def file_finished(file, offenses); end
  def file_started(_file, _options); end
  def initialize(output, options = nil); end
  def next_step(offenses); end
  def pacdots(number); end
  def progress_line; end
  def progress_line=(arg0); end
  def started(target_files); end
  def step(character); end
  def update_progress_line; end
  include RuboCop::Formatter::TextUtil
end
class RuboCop::Formatter::AutoGenConfigFormatter < RuboCop::Formatter::ProgressFormatter
  def finished(inspected_files); end
end
class RuboCop::Formatter::FormatterSet < Array
  def add_formatter(formatter_type, output_path = nil); end
  def builtin_formatter_class(specified_key); end
  def close_output_files; end
  def custom_formatter_class(specified_class_name); end
  def file_finished(file, offenses); end
  def file_started(file, options); end
  def finished(*args); end
  def formatter_class(formatter_type); end
  def initialize(options = nil); end
  def started(*args); end
end
class RuboCop::CachedData
  def deserialize_offenses(offenses); end
  def from_json(text); end
  def initialize(filename); end
  def message(offense); end
  def serialize_offense(offense); end
  def to_json(offenses); end
end
class RuboCop::Config
  def [](*args, &block); end
  def []=(*args, &block); end
  def add_excludes_from_higher_level(highest_config); end
  def allowed_camel_case_file?(file); end
  def base_dir_for_path_parameters; end
  def bundler_lock_file_path; end
  def check; end
  def delete(*args, &block); end
  def department_of(qualified_cop_name); end
  def deprecation_check; end
  def dig(*args, &block); end
  def disabled_new_cops?; end
  def each(*args, &block); end
  def each_key(*args, &block); end
  def enable_cop?(qualified_cop_name, cop_options); end
  def enabled_new_cops?; end
  def fetch(*args, &block); end
  def file_to_exclude?(file); end
  def file_to_include?(file); end
  def for_all_cops; end
  def for_badge(badge); end
  def for_cop(cop); end
  def for_department(department_name); end
  def initialize(hash = nil, loaded_path = nil); end
  def internal?; end
  def key?(*args, &block); end
  def keys(*args, &block); end
  def loaded_features; end
  def loaded_path; end
  def make_excludes_absolute; end
  def map(*args, &block); end
  def merge(*args, &block); end
  def path_relative_to_config(path); end
  def patterns_to_exclude; end
  def patterns_to_include; end
  def pending_cops; end
  def possibly_include_hidden?; end
  def read_rails_version_from_bundler_lock_file; end
  def replace(*args, &block); end
  def self.create(hash, path); end
  def signature; end
  def smart_loaded_path; end
  def target_rails_version; end
  def target_rails_version_from_bundler_lock_file; end
  def target_ruby_version(*args, &block); end
  def to_h(*args, &block); end
  def to_hash(*args, &block); end
  def to_s; end
  def transform_values(*args, &block); end
  def validate(*args, &block); end
  extend Forwardable
  include RuboCop::FileFinder
  include RuboCop::PathUtil
end
class RuboCop::Config::CopConfig < Struct
  def metadata; end
  def metadata=(_); end
  def name; end
  def name=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RuboCop::ConfigLoaderResolver
  def base_configs(path, inherit_from, file); end
  def determine_inherit_mode(hash, key); end
  def disabled?(hash, department); end
  def duplicate_setting?(base_hash, derived_hash, key, inherited_file); end
  def gem_config_path(gem_name, relative_config_path); end
  def handle_disabled_by_default(config, new_default_configuration); end
  def inherited_file(path, inherit_from, file); end
  def merge(base_hash, derived_hash, **opts); end
  def merge_hashes?(base_hash, derived_hash, key); end
  def merge_with_default(config, config_file, unset_nil:); end
  def override_department_setting_for_cops(base_hash, derived_hash); end
  def override_enabled_for_disabled_departments(base_hash, derived_hash); end
  def remote_file?(uri); end
  def resolve_inheritance(path, hash, file, debug); end
  def resolve_inheritance_from_gems(hash); end
  def resolve_requires(path, hash); end
  def should_union?(base_hash, key, inherit_mode); end
  def transform(config, &block); end
  def warn_on_duplicate_setting(base_hash, derived_hash, key, **opts); end
end
class RuboCop::ConfigNotFoundError < RuboCop::Error
end
class RuboCop::ConfigLoader
  def self.add_excludes_from_files(config, config_file); end
  def self.add_loaded_features(loaded_features); end
  def self.add_missing_namespaces(path, hash); end
  def self.check_duplication(yaml_code, absolute_path); end
  def self.clear_options; end
  def self.configuration_file_for(target_dir); end
  def self.configuration_from_file(config_file); end
  def self.debug; end
  def self.debug=(arg0); end
  def self.debug?; end
  def self.default_configuration; end
  def self.default_configuration=(arg0); end
  def self.disable_pending_cops; end
  def self.disable_pending_cops=(arg0); end
  def self.enable_pending_cops; end
  def self.enable_pending_cops=(arg0); end
  def self.expand_path(path); end
  def self.file_path(file); end
  def self.find_project_dotfile(target_dir); end
  def self.find_project_root; end
  def self.find_user_dotfile; end
  def self.find_user_xdg_config; end
  def self.ignore_parent_exclusion; end
  def self.ignore_parent_exclusion=(arg0); end
  def self.ignore_parent_exclusion?; end
  def self.load_file(file); end
  def self.load_yaml_configuration(absolute_path); end
  def self.loaded_features; end
  def self.merge(base_hash, derived_hash); end
  def self.merge_with_default(config, config_file, unset_nil: nil); end
  def self.possible_new_cops?(config); end
  def self.project_root; end
  def self.project_root=(arg0); end
  def self.read_file(absolute_path); end
  def self.resolver; end
  def self.warn_on_pending_cops(pending_cops); end
  def self.warn_pending_cop(cop); end
  def self.yaml_safe_load!(yaml_code, filename); end
  def self.yaml_safe_load(yaml_code, filename); end
end
class RuboCop::ConfigObsoletion
  def initialize(config); end
  def load_cop_rules(rules); end
  def load_parameter_rules(rules); end
  def load_rules; end
  def obsoletions; end
  def reject_obsolete!; end
  def rules; end
  def self.files; end
  def self.files=(arg0); end
  def self.legacy_cop_names; end
  def warnings; end
end
class RuboCop::ConfigObsoletion::Rule
  def config; end
  def cop_rule?; end
  def initialize(config); end
  def parameter_rule?; end
  def smart_loaded_path; end
  def to_sentence(collection, connector: nil); end
  def violated?; end
end
class RuboCop::ConfigObsoletion::CopRule < RuboCop::ConfigObsoletion::Rule
  def cop_rule?; end
  def initialize(config, old_name); end
  def message; end
  def old_name; end
  def violated?; end
  def warning?; end
end
class RuboCop::ConfigObsoletion::ParameterRule < RuboCop::ConfigObsoletion::Rule
  def alternative; end
  def cop; end
  def initialize(config, cop, parameter, metadata); end
  def metadata; end
  def parameter; end
  def parameter_rule?; end
  def reason; end
  def severity; end
  def violated?; end
  def warning?; end
end
class RuboCop::ConfigObsoletion::ChangedEnforcedStyles < RuboCop::ConfigObsoletion::ParameterRule
  def message; end
  def value; end
  def violated?; end
end
class RuboCop::ConfigObsoletion::ChangedParameter < RuboCop::ConfigObsoletion::ParameterRule
  def message; end
end
class RuboCop::ConfigObsoletion::ExtractedCop < RuboCop::ConfigObsoletion::CopRule
  def affected_cops; end
  def department; end
  def feature_loaded?; end
  def gem; end
  def initialize(config, old_name, gem); end
  def rule_message; end
  def violated?; end
end
class RuboCop::ConfigObsoletion::RemovedCop < RuboCop::ConfigObsoletion::CopRule
  def alternatives; end
  def initialize(config, old_name, metadata); end
  def metadata; end
  def old_name; end
  def reason; end
  def rule_message; end
end
class RuboCop::ConfigObsoletion::RenamedCop < RuboCop::ConfigObsoletion::CopRule
  def initialize(config, old_name, new_name); end
  def moved?; end
  def new_name; end
  def rule_message; end
  def verb; end
end
class RuboCop::ConfigObsoletion::SplitCop < RuboCop::ConfigObsoletion::CopRule
  def alternatives; end
  def initialize(config, old_name, metadata); end
  def metadata; end
  def rule_message; end
end
class RuboCop::ConfigStore
  def for(file_or_dir); end
  def for_dir(dir); end
  def for_file(file); end
  def for_pwd; end
  def force_default_config!; end
  def initialize; end
  def options_config=(options_config); end
end
class RuboCop::ConfigValidator
  def alert_about_unrecognized_cops(invalid_cop_names); end
  def check_cop_config_value(hash, parent = nil); end
  def check_obsoletions; end
  def check_target_ruby; end
  def each_invalid_parameter(cop_name); end
  def for_all_cops(*args, &block); end
  def initialize(config); end
  def msg_not_boolean(parent, key, value); end
  def reject_conflicting_safe_settings; end
  def reject_mutually_exclusive_defaults; end
  def smart_loaded_path(*args, &block); end
  def target_ruby; end
  def target_ruby_version; end
  def validate; end
  def validate_enforced_styles(valid_cop_names); end
  def validate_new_cops_parameter; end
  def validate_parameter_names(valid_cop_names); end
  def validate_section_presence(name); end
  def validate_support_and_has_list(name, formats, valid); end
  def validate_syntax_cop; end
  extend Forwardable
end
class RuboCop::Lockfile
  def dependencies; end
  def gems; end
  def includes_gem?(name); end
  def parser; end
end
class RuboCop::TargetFinder
  def all_cops_include; end
  def combined_exclude_glob_patterns(base_dir); end
  def configured_include?(file); end
  def debug?; end
  def fail_fast?; end
  def find(args, mode); end
  def find_files(base_dir, flags); end
  def force_exclusion?; end
  def included_file?(file); end
  def initialize(config_store, options = nil); end
  def order; end
  def process_explicit_path(path, mode); end
  def ruby_executable?(file); end
  def ruby_extension?(file); end
  def ruby_extensions; end
  def ruby_file?(file); end
  def ruby_filename?(file); end
  def ruby_filenames; end
  def ruby_interpreters(file); end
  def stdin?; end
  def target_files_in_dir(base_dir = nil); end
  def to_inspect?(file, hidden_files, base_dir_config); end
  def wanted_dir_patterns(base_dir, exclude_pattern, flags); end
end
class RuboCop::DirectiveComment
  def comment; end
  def cops; end
  def initialize(comment); end
  def match?(cop_names); end
  def range; end
end
class RuboCop::CommentConfig
  def all_cop_names; end
  def analyze; end
  def analyze_cop(analysis, disabled, line, single_line); end
  def analyze_disabled(analysis, line); end
  def analyze_rest(analysis, line); end
  def analyze_single_line(analysis, line, disabled); end
  def comment_only_line?(line_number); end
  def cop_disabled_line_ranges; end
  def cop_enabled_at_line?(cop, line_number); end
  def cop_line_ranges(analysis); end
  def directive_on_comment_line?(comment); end
  def directive_parts(comment); end
  def each_directive; end
  def each_mentioned_cop; end
  def enable_all?(comment); end
  def extra_enabled_comments; end
  def extra_enabled_comments_with_names(extras:, names:); end
  def handle_enable_all(names, extras, comment); end
  def handle_switch(cop_names, names, disabled, extras, comment); end
  def initialize(processed_source); end
  def non_comment_token_line_numbers; end
  def processed_source; end
  def qualified_cop_name(cop_name); end
end
class RuboCop::CommentConfig::CopAnalysis < Struct
  def line_ranges; end
  def line_ranges=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def start_line_number; end
  def start_line_number=(_); end
end
class RuboCop::MagicComment
  def any?; end
  def encoding_specified?; end
  def extract(pattern); end
  def frozen_string_literal; end
  def frozen_string_literal?; end
  def frozen_string_literal_specified?; end
  def initialize(comment); end
  def self.parse(comment); end
  def specified?(value); end
  def valid_literal_value?; end
end
class RuboCop::MagicComment::EditorComment < RuboCop::MagicComment
  def match(keyword); end
  def tokens; end
end
class RuboCop::MagicComment::EmacsComment < RuboCop::MagicComment::EditorComment
  def encoding; end
  def extract_frozen_string_literal; end
end
class RuboCop::MagicComment::VimComment < RuboCop::MagicComment::EditorComment
  def encoding; end
  def frozen_string_literal; end
end
class RuboCop::MagicComment::SimpleComment < RuboCop::MagicComment
  def encoding; end
  def extract_frozen_string_literal; end
end
class RuboCop::ResultCache
  def any_symlink?(path); end
  def context_checksum(team, options); end
  def debug?; end
  def file_checksum(file, config_store); end
  def initialize(file, team, options, config_store, cache_root = nil); end
  def load; end
  def path; end
  def relevant_options_digest(options); end
  def rubocop_checksum; end
  def rubocop_extra_features; end
  def save(offenses); end
  def self.allow_symlinks_in_cache_location?(config_store); end
  def self.cache_root(config_store); end
  def self.cleanup(config_store, verbose, cache_root = nil); end
  def self.inhibit_cleanup; end
  def self.inhibit_cleanup=(arg0); end
  def self.remove_files(files, dirs, remove_count); end
  def self.remove_oldest_files(files, dirs, cache_root, verbose); end
  def self.requires_file_removal?(file_count, config_store); end
  def self.rubocop_required_features; end
  def self.rubocop_required_features=(arg0); end
  def self.source_checksum; end
  def self.source_checksum=(arg0); end
  def symlink_protection_triggered?(path); end
  def team_checksum(team); end
  def valid?; end
end
class RuboCop::Runner
  def aborting=(arg0); end
  def aborting?; end
  def add_redundant_disables(file, offenses, source); end
  def cached_result(file, team); end
  def cached_run?; end
  def check_for_infinite_loop(processed_source, offenses_by_iteration); end
  def check_for_redundant_disables?(source); end
  def considered_failure?(offense); end
  def do_inspection_loop(file); end
  def each_inspected_file(files); end
  def errors; end
  def file_finished(file, offenses); end
  def file_offense_cache(file); end
  def file_offenses(file); end
  def file_started(file); end
  def filter_cop_classes(cop_classes, config); end
  def filtered_run?; end
  def find_target_files(paths); end
  def formatter_set; end
  def get_processed_source(file); end
  def initialize(options, config_store); end
  def inspect_file(processed_source, team = nil); end
  def inspect_files(files); end
  def iterate_until_no_changes(source, offenses_by_iteration); end
  def list_files(paths); end
  def minimum_severity_to_fail; end
  def mobilize_team(processed_source); end
  def mobilized_cop_classes(config); end
  def process_file(file); end
  def qualify_option_cop_names; end
  def redundant_cop_disable_directive(file); end
  def run(paths); end
  def save_in_cache(cache, offenses); end
  def standby_team(config); end
  def style_guide_cops_only?(config); end
  def team_for_redundant_disables(file, offenses, source); end
  def warm_cache(target_files); end
  def warnings; end
end
class RuboCop::Runner::InfiniteCorrectionLoop < RuntimeError
  def initialize(path, offenses_by_iteration, loop_start: nil); end
  def offenses; end
end
class RuboCop::CLI
  def act_on_options; end
  def apply_default_formatter; end
  def config_store; end
  def execute_runners; end
  def handle_exiting_options; end
  def initialize; end
  def options; end
  def run(args = nil); end
  def run_command(name); end
  def set_options_to_config_loader; end
  def suggest_extensions; end
  def validate_options_vs_config; end
end
class RuboCop::CLI::Finished < RuntimeError
end
module RuboCop::CLI::Command
  def self.class_for(name); end
  def self.run(env, name); end
end
class RuboCop::CLI::Environment
  def config_store; end
  def initialize(options, config_store, paths); end
  def options; end
  def paths; end
  def run(name); end
end
class RuboCop::CLI::Command::Base
  def env; end
  def initialize(env); end
  def self.by_command_name(name); end
  def self.command_name; end
  def self.command_name=(arg0); end
  def self.inherited(subclass); end
end
class RuboCop::CLI::Command::AutoGenerateConfig < RuboCop::CLI::Command::Base
  def add_formatter; end
  def add_inheritance_from_auto_generated_file(config_file); end
  def execute_runner; end
  def existing_configuration(config_file); end
  def line_length_cop(config); end
  def line_length_enabled?(config); end
  def max_line_length(config); end
  def maybe_run_line_length_cop; end
  def reset_config_and_auto_gen_file; end
  def run; end
  def run_all_cops(line_length_contents); end
  def run_line_length_cop; end
  def same_max_line_length?(config1, config2); end
  def skip_line_length_cop(reason); end
  def write_config_file(file_name, file_string, rubocop_yml_contents); end
end
class RuboCop::CLI::Command::ExecuteRunner < RuboCop::CLI::Command::Base
  def display_error_summary(errors); end
  def display_summary(runner); end
  def display_warning_summary(warnings); end
  def execute_runner(paths); end
  def maybe_print_corrected_source; end
  def run; end
  def with_redirect; end
  include RuboCop::Formatter::TextUtil
end
class RuboCop::CLI::Command::InitDotfile < RuboCop::CLI::Command::Base
  def run; end
end
class RuboCop::CLI::Command::ShowCops < RuboCop::CLI::Command::Base
  def config_lines(cop); end
  def cops_of_department(cops, department); end
  def initialize(env); end
  def print_available_cops; end
  def print_cop_details(cops); end
  def print_cops_of_department(registry, department, show_all); end
  def run; end
  def selected_cops_of_department(cops, department); end
end
class RuboCop::CLI::Command::SuggestExtensions < RuboCop::CLI::Command::Base
  def current_formatter; end
  def dependent_gems; end
  def extensions; end
  def installed_gems; end
  def lockfile; end
  def puts(*args); end
  def run; end
  def skip?; end
end
class RuboCop::CLI::Command::Version < RuboCop::CLI::Command::Base
  def run; end
end
class RuboCop::ConfigRegeneration
  def generation_command; end
  def options; end
  def todo_exists?; end
end
class RuboCop::IncorrectCopNameError < StandardError
end
class RuboCop::OptionArgumentError < StandardError
end
class RuboCop::Options
  def add_aliases(opts); end
  def add_auto_gen_options(opts); end
  def add_boolean_flags(opts); end
  def add_cache_options(opts); end
  def add_configuration_options(opts); end
  def add_cop_selection_csv_option(option, opts); end
  def add_flags_with_optional_args(opts); end
  def add_formatting_options(opts); end
  def add_list_options(opts); end
  def add_only_options(opts); end
  def add_severity_option(opts); end
  def args_from_env; end
  def args_from_file; end
  def define_options; end
  def initialize; end
  def long_opt_symbol(args); end
  def option(opts, *args); end
  def parse(command_line_args); end
  def require_feature(file); end
end
class RuboCop::OptionsValidator
  def boolean_or_empty_cache?; end
  def display_only_fail_level_offenses_with_autocorrect?; end
  def except_syntax?; end
  def incompatible_options; end
  def initialize(options); end
  def only_includes_redundant_disable?; end
  def self.format_message_from(name, cop_names); end
  def self.validate_cop_list(names); end
  def validate_auto_correct; end
  def validate_auto_gen_config; end
  def validate_cache_enabled_for_cache_root; end
  def validate_compatibility; end
  def validate_cop_options; end
  def validate_display_only_failed; end
  def validate_exclude_limit_option; end
  def validate_parallel; end
  def validate_parallel_with_combo_option; end
end
module RuboCop::OptionsHelp
end
class RuboCop::RemoteConfig
  def cache_name_from_uri; end
  def cache_path; end
  def cache_path_exists?; end
  def cache_path_expired?; end
  def file; end
  def generate_request(uri); end
  def handle_response(response, limit, &block); end
  def inherit_from_remote(file, path); end
  def initialize(url, base_dir); end
  def request(uri = nil, limit = nil, &block); end
  def uri; end
end
class RuboCop::TargetRuby
  def initialize(config); end
  def rubocop_version_with_support; end
  def self.supported_versions; end
  def source; end
  def supported?; end
  def version; end
end
class RuboCop::TargetRuby::Source
  def initialize(config); end
  def name; end
  def to_s; end
  def version; end
end
class RuboCop::TargetRuby::RuboCopConfig < RuboCop::TargetRuby::Source
  def find_version; end
  def name; end
end
class RuboCop::TargetRuby::RubyVersionFile < RuboCop::TargetRuby::Source
  def filename; end
  def find_version; end
  def name; end
  def pattern; end
  def version_file; end
end
class RuboCop::TargetRuby::ToolVersionsFile < RuboCop::TargetRuby::RubyVersionFile
  def filename; end
  def name; end
  def pattern; end
end
class RuboCop::TargetRuby::BundlerLockFile < RuboCop::TargetRuby::Source
  def bundler_lock_file_path; end
  def find_version; end
  def name; end
end
class RuboCop::TargetRuby::GemspecFile < RuboCop::TargetRuby::Source
  def find_version; end
  def gem_requirement?(param0 = nil); end
  def gemspec_filename; end
  def gemspec_filepath; end
  def name; end
  def required_ruby_version(param0); end
  def version_from_array(array); end
  def version_from_gemspec_file(file); end
  def version_from_str(str); end
  extend RuboCop::AST::NodePattern::Macros
end
class RuboCop::TargetRuby::Default < RuboCop::TargetRuby::Source
  def find_version; end
  def name; end
end
module RuboCop::YAMLDuplicationChecker
  def self.check(yaml_string, filename, &on_duplicated); end
  def self.traverse(tree, &on_duplicated); end
end
class RuboCop::RakeTask < ::Rake::TaskLib
  def initialize(name = :rubocop, *args, &task_block); end
end
