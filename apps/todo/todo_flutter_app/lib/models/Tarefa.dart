class Tarefa {
	String title;
	bool done;

	Tarefa({this.title, this.done});

	//MAPPER JSON
	Tarefa.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		done = json['done'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['done'] = this.done;
		return data;
	}
}
