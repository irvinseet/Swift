//
//  Language.swift
//  ContiDrive-EU
//
//  Created by Seet, Ting Yang Irvin (uif08816) on 27/5/22.
//

import Foundation

// List of language codes used by Apple https://www.loc.gov/standards/iso639-2/php/English_list.php
enum Language: String {
    case en     // English
    case de     // German
    case de_DE
    case fr     // French
    case fr_FR
    case it     // Italian
    case it_IT
    case gr     // Greek
    case el
    case el_GR
    case pt     // Portugese
    case pt_PT
    case es     // Spanish
    case es_ES
    case nl     // Dutch
    case nl_NL
    case ru     // Russian
    case ru_RU
    case cs     // Czech
    case cz
    case cs_CZ
    case hr     // Croatian
    case hr_HR
    case pl     // Polish
    case pl_PL
    case fi     // Finnish
    case fi_FI
    case se     // Northen Sami
    case sv
    case sv_SE
    case ro     // Moldavian
    case ro_RO
    case tr     // Turkish
    case tr_TR
    
    func toString() -> String {
        switch self {
        case .en:
            return "en"
        case .de:
            return "de"
        case .de_DE:
            return "de-DE"
        case .fr:
            return "fr"
        case .fr_FR:
            return "fr-FR"
        case .it:
            return "it"
        case .it_IT:
            return "it-IT"
        case .gr:
            return "gr"
        case .el:
            return "el"
        case .el_GR:
            return "el-GR"
        case .pt:
            return "pt"
        case .pt_PT:
            return "pt-PT"
        case .es:
            return "es"
        case .es_ES:
            return "es-ES"
        case .nl:
            return "nl"
        case .nl_NL:
            return "nl-NL"
        case .ru:
            return "ru"
        case .ru_RU:
            return "ru_RU"
        case .cs:
            return "cs"
        case .cz:
            return "cz"
        case .cs_CZ:
            return "cs-CZ"
        case .hr:
            return "hr"
        case .hr_HR:
            return "hr_HR"
        case .pl:
            return "pl"
        case .pl_PL:
            return "pl-PL"
        case .fi:
            return "fi"
        case .fi_FI:
            return "fi-FI"
        case .se:
            return "se"
        case .sv:
            return "sv"
        case .sv_SE:
            return "sv-SE"
        case .ro:
            return "ro"
        case .ro_RO:
            return "ro-RO"
        case .tr:
            return "tr"
        case .tr_TR:
            return "tr-TR"
        }
    }
}

func languageSelector(locale: String, mode: String) -> String {
    let language  = Language(rawValue: locale)
    switch language {
    case .de, .de_DE:
        return Language.de.toString()
    case .fr, .fr_FR:
        return Language.fr.toString()
    case .it, .it_IT:
        return Language.it.toString()
    case .el, .el_GR:
        if mode == "menu" { return Language.el.toString() }
        return Language.gr.toString()
    case .pt, .pt_PT:
        return Language.pt.toString()
    case .es, .es_ES:
        return Language.es.toString()
    case .nl, .nl_NL:
        return Language.nl.toString()
    case .ru, .ru_RU:
        return Language.ru.toString()
    case .cs, .cs_CZ:
        if mode == "menu" { return Language.cs.toString() }
        return Language.cz.toString()
    case .hr, .hr_HR:
        return Language.hr.toString()
    case .pl, .pl_PL:
        return Language.pl.toString()
    case .fi, .fi_FI:
        return Language.fi.toString()
    case .sv, .sv_SE:
        return Language.se.toString()
    case .ro, .ro_RO:
        return Language.ro.toString()
    case .tr, .tr_TR:
        return Language.tr.toString()
    default:
        return Language.en.toString()
    }
}

print(Language.en.toString())
