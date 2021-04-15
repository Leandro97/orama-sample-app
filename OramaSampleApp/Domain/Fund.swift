//
//  Fund.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

struct Fund: Codable {
    let initialDate:   String
    let simpleName:    String
    let fullName:      String
    let specification: Specification
    let operability:   Operability
    let fundManager:   FundManager
    let strategyVideo: StrategyVideo?
    
//    //Home
//    simple_name
//    operability.minimum_initial_application_amount
//    specification.fund_risk_profile.name
//
//    //Detail
//    full_name
//    initial_date
//    strategy_video.thumbnail (se possuir!)
//    fund_manager.description

    private enum CodingKeys: String, CodingKey {
       case initialDate   = "initial_date",
            simpleName    = "simple_name",
            fullName      = "full_name",
            specification = "specification",
            operability   = "operability",
            fundManager   = "fund_manager",
            strategyVideo = "strategy_video"
    }
}

//{
//      "initial_date":"2019-02-27",
//      "performance_audios":[
//
//      ],
//      "fees":{
//         "maximum_administration_fee":"0,93%",
//         "anticipated_retrieval_fee_value":"0.00",
//         "administration_fee":"0,93%",
//         "anticipated_retrieval_fee":"N\u00e3o h\u00e1",
//         "performance_fee":"N\u00e3o h\u00e1",
//         "has_anticipated_retrieval":false
//      },
//      "is_simple":false,
//      "description_seo":"Investir em fundos pela \u00d3rama \u00e9 a melhor forma de acessar todos os investimentos sem preocupa\u00e7\u00e3o, afinal, tem sempre um especialista cuidando disso para voc\u00ea.",
//      "operability":{
//         "has_operations_on_thursdays":false,
//         "retrieval_liquidation_days_type":"\u00fateis",
//         "application_quotation_days_type":"\u00fateis",
//         "retrieval_quotation_days":1,
//         "anticipated_retrieval_quotation_days_type":"corridos",
//         "anticipated_retrieval_quotation_days_str":"N\u00e3o h\u00e1",
//         "retrieval_quotation_days_type":"\u00fateis",
//         "anticipated_retrieval_quotation_days":0,
//         "has_operations_on_wednesdays":true,
//         "minimum_balance_permanence":"1000.00",
//         "has_operations_on_mondays":false,
//         "has_grace_period":false,
//         "application_time_limit":"13:00:59",
//         "retrieval_time_limit":"13:00:59",
//         "has_operations_on_fridays":false,
//         "anticipate_retrieval_liquidation_days":0,
//         "minimum_initial_application_amount":"5000.00",
//         "anticipate_retrieval_liquidation_days_type":"corridos",
//         "retrieval_special_type":"",
//         "anticipate_retrieval_liquidation_days_str":"N\u00e3o h\u00e1",
//         "application_quotation_days_str":"D+1 (somente \u00e0s quartas-feiras)",
//         "grace_period_in_days_str":null,
//         "retrieval_quotation_days_str":"D+1 (somente \u00e0s quartas-feiras)",
//         "grace_period_in_days":0,
//         "retrieval_liquidation_days_str":"D+5",
//         "minimum_subsequent_retrieval_amount":"0.00",
//         "retrieval_direct":false,
//         "retrieval_liquidation_days":5,
//         "application_quotation_days":1,
//         "max_balance_permanence":"0.00",
//         "maximum_initial_application_amount":"0.00",
//         "has_operations_on_tuesdays":false,
//         "minimum_subsequent_application_amount":"1000.00"
//      },
//      "full_name":"PIMCO Income D\u00f3lar FIC FIM IE",
//      "opening_date":null,
//      "id":1013,
//      "is_closed":false,
//      "simple_name":"PIMCO Income D\u00f3lar FIC FIM IE",
//      "target_fund":null,
//      "documents":[
//         {
//            "position":2,
//            "document_type":"Formul\u00e1rio de Informa\u00e7\u00f5es Complementares",
//            "name":"Formul\u00e1rio de Informa\u00e7\u00f5es Complementares",
//            "document_url":"app_img/fund_document/FORM_INFO_COMP_-_PIMCO_Income_D\u00f3lar_FIC_FIM_IE_2019_02_08.pdf"
//         },
//         {
//            "position":0,
//            "document_type":"Ata de Assembleia",
//            "name":"Ata da Assembleia",
//            "document_url":"app_img/fund_document/20210225151758_Ata_da_Assembleia_-_PIMCO_Income_D\u00f3lar_FIC_FIM_IE_-_20210224.pdf"
//         },
//         {
//            "position":4,
//            "document_type":"L\u00e2mina",
//            "name":"L\u00e2mina",
//            "document_url":"app_img/fund_document/20210304120006_PIMCO_Income_D\u00f3lar_FIC_FIM_IE.pdf"
//         },
//         {
//            "position":1,
//            "document_type":"Regulamento",
//            "name":"Regulamento",
//            "document_url":"app_img/fund_document/20210330212957_R_-_PIMCO_Income_D\u00f3lar_FIC_FIM_IE_-_20210329.pdf"
//         },
//         {
//            "position":0,
//            "document_type":"Material de Distribui\u00e7\u00e3o",
//            "name":"Material de Distribui\u00e7\u00e3o",
//            "document_url":"app_img/fund_document/20210406150016_PIMCO_Income_D\u00f3lar_FIC_FIM_IE.pdf"
//         }
//      ],
//      "specification":{
//         "fund_main_strategy_name":"Renda Fixa Global",
//         "fund_suitability_profile":{
//            "score_range_order":3,
//            "name":"Arrojado"
//         },
//         "fund_risk_profile":{
//            "score_range_order":10,
//            "name":"R\u00e9gua de risco 10"
//         },
//         "fund_main_strategy_explanation":"Fundos que investem em uma carteira diversificada de t\u00edtulos de renda fixa, soberanos ou privados, principalmente estrangeiros. A sele\u00e7\u00e3o dos t\u00edtulos \u00e9 baseada em an\u00e1lise fundamentalista.",
//         "fund_type":"Multimercado",
//         "fund_class":"Multimercado Investimento no Exterior",
//         "fund_macro_strategy":{
//            "explanation":"Fundos que buscam retorno por meio de investimentos em ativos de renda fixa. S\u00e3o indicados para a parcela conservadora da carteira do investidor. Podem investir em t\u00edtulos p\u00fablicos e/ ou em t\u00edtulos privados, com remunera\u00e7\u00e3o prefixada, p\u00f3s-fixada ou atrelada a algum \u00edndice de pre\u00e7o.",
//            "id":1,
//            "name":"Renda Fixa"
//         },
//         "fund_class_anbima":"Fundos que podem investir mais de 40% do seu patrim\u00f4nio l\u00edquido em ativos financeiros no exterior.",
//         "fund_main_strategy":{
//            "explanation":"Fundos que investem em uma carteira diversificada de t\u00edtulos de renda fixa, soberanos ou privados, principalmente estrangeiros. A sele\u00e7\u00e3o dos t\u00edtulos \u00e9 baseada em an\u00e1lise fundamentalista.",
//            "fund_macro_strategy":1,
//            "id":21,
//            "name":"Renda Fixa Global"
//         },
//         "is_qualified":true
//      },
//      "quota_date":"2021-04-13",
//      "tax_classification":"Longo prazo",
//      "cnpj":"32.225.478/0001-06",
//      "description":{
//         "objective":"A pol\u00edtica de investimento do FUNDO consiste\r\nem aplicar, no m\u00ednimo, 95% (noventa e cinco por cento)\r\nde seu patrim\u00f4nio l\u00edquido em cotas do PIMCO INCOME\r\nD\u00d3LAR FUNDO DE INVESTIMENTO MULTIMERCADO\r\nINVESTIMENTO NO EXTERIOR, inscrito no CNPJ n\u00ba\r\n32.225.606/0001-11 (\u201cFundo Master\u201d), administrado pelo\r\nADMINISTRADOR e gerido pela GESTORA, cuja\r\npol\u00edtica de investimento consiste em aplicar os recursos\r\ndos cotistas em instrumentos, valores mobili\u00e1rios e\r\nativos financeiros de diferentes naturezas e\r\ncaracter\u00edsticas, de acordo com uma pol\u00edtica de gest\u00e3o\r\nde carteira com o objetivo de que visa a obter\r\noportunidades em diferentes mercados, baseada em\r\numa s\u00f3lida an\u00e1lise macroecon\u00f4mica e sujeita \u00e0s\r\nrestri\u00e7\u00f5es descritas no presente Regulamento.",
//         "movie_url":null,
//         "target_audience":"Investidores Qualificados",
//         "strengths":"A PIMCO foi fundada em 1971, presente em 12 pa\u00edses e no Brasil desde 2012. Recebeu v\u00e1rios pr\u00eamios da Morningstar como Gestor de Renda Fixa. Indicado para diversifica\u00e7\u00e3o global.",
//         "strategy":"Fundo classificado como Renda Fixa Global - Investimento no Exterior, com objetivo de retorno de CDI+3% ao ano no m\u00e9dio/longo prazo. O Fundo investe no mercado de renda fixa global, com exposi\u00e7\u00e3o cambial, com base em an\u00e1lise macroecon\u00f4mica e fundamentalista. Possui uma gest\u00e3o internacional que busca das melhores oportunidades de renda fixa ao redor do mundo, com o objetivo de captar as grandes tend\u00eancias."
//      },
//      "performance_videos":[
//
//      ],
//      "is_active":true,
//      "benchmark":{
//         "id":2,
//         "name":"CDI"
//      },
//      "orama_standard":true,
//      "slug":"PIMCO-Income-Dolar-FIC-FIM-IE",
//      "fund_situation":{
//         "code":"1",
//         "name":"Fundo aberto"
//      },
//      "volatility_12m":"0.181350",
//      "strategy_video":null,
//      "insurance_company_code":null,
//      "profitabilities":{
//         "m60":null,
//         "m48":null,
//         "m24":"0.571826",
//         "m36":null,
//         "month":"0.019436",
//         "m12":"0.247703",
//         "year":"0.106984",
//         "day":"0.011582"
//      },
//      "closed_to_capture_explanation":"",
//      "closing_date":null,
//      "net_patrimony_12m":"0.00",
//      "is_closed_to_capture":false,
//      "fund_manager":{
//         "description":"Fundada em 1971, a PIMCO \u00e9 formada por mais de 2.000 profissionais dedicados, em 12 pa\u00edses, compartilhando a mesma miss\u00e3o: gerenciar riscos e gerar retorno para nossos clientes. Gerimos investimentos para uma ampla variedade de clientes, incluindo fundos de pens\u00e3o p\u00fablicos e privados, bem como ativos em nome de milh\u00f5es de pessoas, de todos os extratos sociais, em todo o mundo. Somos investidores de longo prazo e l\u00edderes de opini\u00e3o. Nossas perspectivas e solu\u00e7\u00f5es baseiam-se em um processo de investimento comprovado, que gera vis\u00f5es macroecon\u00f4micas c\u00edclicas (de curto prazo) e seculares (de tr\u00eas a cinco anos), e que alia essas previs\u00f5es com profundas pesquisas de cr\u00e9dito, an\u00e1lises de capital e gerenciamento de riscos. Em 30/Jun/2016 a PIMCO possu\u00eda USD 1,51 trilh\u00f5es de ativos sob gest\u00e3o.",
//         "id":41,
//         "full_name":"PIMCO Latin America Administradora de Carteiras LTDA.",
//         "logo":"app_img/manager/logo_small/pimco.jpg",
//         "slug":"PIMCO",
//         "name":"PIMCO"
//      },
//      "esg_seal":false
//   },
