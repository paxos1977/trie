if(MemoryLeakReportFilename)
	file(STRINGS ${MemoryLeakReportFilename} MemoryLeakReport REGEX "WARNING: Visual Leak Detector detected memory leaks")
	if(MemoryLeakReport)
		message("FailOnMemoryLeak.cmake: error CMAKE: Memory Leak Detected")
	endif()
endif()