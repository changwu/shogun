%module Labels%{
 #include "features/Labels.h" 
%}

%include "swigfiles/common.i"

class CLabels
{
	public:
		CLabels(INT num_labels);
		CLabels(CHAR* fname);
		CLabels();
		~CLabels();

		/// set/get INT label
		inline bool set_int_label(INT idx, INT label)
		{ 
			if (labels && idx<num_labels)
			{
				labels[idx]= (REAL) label;
				return true;
			}
			else 
				return false;
		}

		inline INT get_int_label(INT idx)
		{
			if (labels && idx<num_labels)
			{
				assert(labels[idx]== ((REAL) ((INT) labels[idx])));
				return ((INT) labels[idx]);
			}
			else
				return -1;
		}
};

%include "carrays.i"
%array_class(CLabels,labelArray)
