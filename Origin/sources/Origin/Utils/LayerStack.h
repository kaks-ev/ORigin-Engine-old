#pragma once
#include "Layer.h"

namespace Origin {

	class LayerStack
	{
	private:
		std::vector<Layer*> m_Layers;
		unsigned int m_LayerInsertIndex = 0;

	public:
		LayerStack();
		~LayerStack();

		void PushLayer(Layer* layer);
		void PushOverlay(Layer* overlay);
		void PopLayer(Layer* layer);
		void PopOverlay(Layer* overlay);

		std::vector<Layer*>::const_iterator begin() { return m_Layers.begin(); }
		std::vector<Layer*>::const_iterator end() { return m_Layers.end(); }

		std::vector<Layer*>::const_reverse_iterator rbegin() { return m_Layers.rbegin(); }
		std::vector<Layer*>::const_reverse_iterator rend() { return m_Layers.rend(); }

	};
}

