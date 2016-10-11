mob/proc/crossbreed(var/mob/CHILD,var/mob/FATHER,var/mob/MOTHER)
	switch(CHILD.Gender)
		if("Male")
			switch(FATHER.Race)
				if("Human")
					switch(MOTHER.Race)
						if("Human")
							return
						if("Elf")
							if(prob(50))
								CHILD.Hair="Elf[Gender]"
							return
						if("Dwarf")
							if(prob(50))
								CHILD.Beard = pick("Grey","Brown","Black")
							return
				if("Elf")
					switch(MOTHER.Race)
						if("Human")
							if(prob(50))
								CHILD.Hair="Elf[Gender]"
							return
						if("Elf")
							return
						if("Dwarf")
							if(prob(50))
								CHILD.Beard = pick("Grey","Brown","Black")
							if(prob(50))
								CHILD.Hair="Elf[Gender]"
							return
				if("Dwarf")
					switch(MOTHER.Race)
						if("Human")
							CHILD.MagicalAptitude=prob(4.5)
						if("Elf")
							CHILD.MagicalAptitude=prob(6)
						if("Dwarf")
							return
		if("Female")
			switch(MOTHER.Race)
				if("Human")
					switch(FATHER.Race)
						if("Human")
							return
						if("Elf")
							if(prob(50))
								CHILD.Hair="Elf[Gender]"
							return
						if("Dwarf")
							return
				if("Elf")
					switch(FATHER.Race)
						if("Human")
							if(prob(50))
								CHILD.Hair="Elf[Gender]"
							return
						if("Elf")
							return
						if("Dwarf")
							if(prob(50))
								CHILD.Hair="Elf[Gender]"
							return
				if("Dwarf")
					switch(FATHER.Race)
						if("Human")
							CHILD.MagicalAptitude=prob(4.5)
							return
						if("Elf")
							CHILD.MagicalAptitude=prob(6)
							return
						if("Dwarf")
							return