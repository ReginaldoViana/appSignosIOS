//
//  ViewController.swift
//  App Signos
//
//  Created by Reginaldo Viana on 08/08/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = []
    var significadoSignos:[String] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Configure signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Líbra")
        signos.append("Escorpião")
        signos.append("Sargitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //Configure significados
        significadoSignos.append("Sendo o primeiro do zodíaco, o signo de Áries representa fortemente novos inícios, pioneirismo, coragem, empreendedorismo, energia, dinamismo e competitividade. Em suas vibrações mais baixas, temos a impulsividade, egoísmo e a pressa. Planetas que um indivíduo tenha nesse signo podem se manifestar de forma pioneira, corajosa ou imprudente.")
        significadoSignos.append("As principais qualidades de Touro são a determinação, estabilidade, perseverança, sensualidade e praticidade. É interessante ter um cuidado com a teimosia, preguiça, possessividade ou materialismo. Planetas que um indivíduo tenha em Touro se manifestam de forma estável ou até mesmo um pouco mais lenta.")
        significadoSignos.append("As vibrações mais altas de Gêmeos são a inteligência, sociabilidade, comunicatividade, a curiosidade para aprender coisas novas e a flexibilidade para compreender outros pontos de vista. Já nas vibrações mais baixas, há a dispersão, a fala em excesso e uma possível superficialidade. Planetas que um indivíduo tenha em Gêmeos tendem a se manifestar de forma versátil, plural ou inconstante.")
        significadoSignos.append("As principais características de Câncer são o fato de se tratar de um signo muito amoroso, protetor, simpático e receptivo. Já em suas vibrações mais baixas, com as quais é interessante quem tem o sol nesse signo ter cuidado, são a instabilidade emocional, o apego ao passado e a dependência em outras pessoas. Planetas em Câncer tendem a se manifestar de forma afetiva, sensível e protetora.")
        significadoSignos.append("As vibrações mais altas de Leão são a confiança, entusiasmo, generosidade e a criatividade. As mais baixas, com as quais quem é de leão tem que ter cuidado, são a arrogância, o egocentrismo e a preguiça. Planetas em Leão tendem a se manifestar de forma criativa, ousada e dominadora.")
        significadoSignos.append("As principais características de Virgem são a incrível eficiência desse signo, além da praticidade, dedicação, organização e o fato de serem super observadores. Já as vibrações mais baixas consistem no fato de os virginianos muitas vezes serem críticos demais, não só com os outros como consigo mesmos também. Planetas em Virgem tendem a se manifestar de forma analítica, prática e organizada.")
        significadoSignos.append("Quanto às suas vibrações mais altas, Libra é o signo mais diplomático do zodíaco, tendo a busca por equilíbrio como característica evidente, além da sociabilidade e apreciação por arte e romance. Em suas vibrações mais baixas, evidencia-se a indecisão, por querer tanto considerar os dois lados que acaba não se decidindo. Planetas que um indivíduo tenha em Libra tendem a se manifestar de forma harmônica, e buscam parcerias e diplomacia.")
        significadoSignos.append("Sendo um signo bastante intenso e passional, Escorpião, em suas vibrações mais altas, tem tudo para ser incrivelmente transformador, profundo, intuitivo, enigmático e curador. Quanto às vibrações mais baixas, quem tem o sol, ascendente ou muitos planetas neste signo pode acabar sendo muito possessivo, vingativo ou auto-destrutivo às vezes. Planetas em Escorpião se manifestam possivelmente de forma intensa, poderosa, transformadora ou misteriosa.")
        significadoSignos.append("As vibrações mais altas de Sagitário são a expansão, sorte, otimismo, aventura e uma visão mais abrangente e filosófica dos fatos. Já em suas vibrações mais baixas, sagitarianos podem acabar sendo excessivos, grosseiros (na maneira de falar a “verdade”) e irresponsáveis, além de às vezes acabarem sendo fanáticos no que acreditam e seguem. Planetas em Sagitário se manifestam de forma expansiva, otimista e sincera.")
        significadoSignos.append("As vibrações mais altas de Capricórnio estão ligadas à responsabilidade, ao foco, à organização, à ambição e o fato de serem muito trabalhadores. Já as vibrações mais baixas podem acabar sendo a rigidez excessiva, pessimismo e uma possível avareza. Planetas que um indivíduo tenha em Capricórnio tendem a se manifestar de forma prudente, séria e disciplinada.")
        significadoSignos.append("Aquário é o signo cujas vibrações mais altas são a criatividade, humanitarismo e o fato de serem verdadeiramente revolucionários e originais. Já as vibrações mais baixas podem ser o excentrismo, rebeldia e racionalidade em excesso. Planetas que um indivíduo tenha em Aquário tendem a se manifestar de forma original, livre, imprevisível e revolucionária.")
        significadoSignos.append("Em suas vibrações mais altas, Peixes tem tudo a ver com sonhos, arte, sensibilidade e espiritualidade. Já em suas vibrações mais baixas, especialmente para aqueles que têm o Sol em Peixes ou que têm este signo forte no mapa, é possível que haja uma dificuldade em manter os pés no chão, uma instabilidade emocional e a busca por recursos de fuga da realidade. Planetas em Peixes tendem a se manifestar de forma mística, intuitiva, empática ou fantasiosa. ")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[ indexPath.row ]
        
        return celula
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do Signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
        //print(signos[indexPath.row])
    }


}

