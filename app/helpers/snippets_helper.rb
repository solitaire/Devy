module SnippetsHelper
  LANGUAGES = ["Ruby", "Python", "C++", "Java", "Html",
                         "C", "Pascal", "D", "Javascript"]

  def select_languages
    select("snippet", "language", LANGUAGES)
  end
  
  def path_for_snippet(snippet)
    if snippet.project
      project_snippet_path(snippet.project, snippet)
    else
      snippet_path(snippet)
    end
  end
  
  def edit_path_for_snippet(snippet)
    if snippet.project
      edit_project_snippet_path(snippet.project, snippet)
    else
      edit_snippet_path(snippet)
    end
  end
  
  def coderay(snippet)
      CodeRay.scan(snippet.body, snippet.language).div(:css => :class).html_safe
  end  
  
end
