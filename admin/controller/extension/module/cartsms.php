<?php

require_once DIR_APPLICATION . "controller/extension/modification.php";

class ControllerExtensionModuleCartsms extends Controller
{

    private $error = array();
    static public $lang_iso = array('aa' => 'Afar', 'ab' => 'Abkhaz', 'ae' => 'Avestan',
        'af' => 'Afrikaans', 'ak' => 'Akan', 'am' => 'Amharic', 'an' => 'Aragonese',
        'ar' => 'Arabic', 'as' => 'Assamese', 'av' => 'Avaric', 'ay' => 'Aymara',
        'az' => 'Azerbaijani', 'ba' => 'Bashkir', 'be' => 'Belarusian', 'bg' => 'Bulgarian',
        'bh' => 'Bihari', 'bi' => 'Bislama', 'bm' => 'Bambara', 'bn' => 'Bengali',
        'bo' => 'Tibetan Standard, Tibetan, Central', 'br' => 'Breton', 'bs' => 'Bosnian',
        'ca' => 'Catalan; Valencian', 'ce' => 'Chechen', 'ch' => 'Chamorro', 'co' => 'Corsican',
        'cr' => 'Cree', 'cs' => 'Czech', 'cu' => 'Old Church Slavonic, Church Slavic, Church Slavonic, Old Bulgarian, Old Slavonic',
        'cv' => 'Chuvash', 'cy' => 'Welsh', 'da' => 'Danish', 'de' => 'German', 'dv' => 'Divehi; Dhivehi; Maldivian;',
        'dz' => 'Dzongkha', 'ee' => 'Ewe', 'el' => 'Greek, Modern', 'en' => 'English',
        'eo' => 'Esperanto', 'es' => 'Spanish', 'et' => 'Estonian', 'eu' => 'Basque',
        'fa' => 'Persian', 'ff' => 'Fula; Fulah; Pulaar; Pular', 'fi' => 'Finnish',
        'fj' => 'Fijian', 'fo' => 'Faroese', 'fr' => 'French', 'fy' => 'Western Frisian',
        'ga' => 'Irish', 'gd' => 'Scottish Gaelic; Gaelic', 'gl' => 'Galician', 'gn' => 'GuaranÃ­',
        'gu' => 'Gujarati', 'gv' => 'Manx', 'ha' => 'Hausa', 'he' => 'Hebrew (modern)',
        'hi' => 'Hindi', 'ho' => 'Hiri Motu', 'hr' => 'Croatian', 'ht' => 'Haitian; Haitian Creole',
        'hu' => 'Hungarian', 'hy' => 'Armenian', 'hz' => 'Herero', 'ia' => 'Interlingua',
        'id' => 'Indonesian', 'ie' => 'Interlingue', 'ig' => 'Igbo', 'ii' => 'Nuosu',
        'ik' => 'Inupiaq', 'io' => 'Ido', 'is' => 'Icelandic', 'it' => 'Italian',
        'iu' => 'Inuktitut', 'ja' => 'Japanese (ja)', 'jv' => 'Javanese (jv)', 'ka' => 'Georgian',
        'kg' => 'Kongo', 'ki' => 'Kikuyu, Gikuyu', 'kj' => 'Kwanyama, Kuanyama',
        'kk' => 'Kazakh', 'kl' => 'Kalaallisut, Greenlandic', 'km' => 'Khmer', 'kn' => 'Kannada',
        'ko' => 'Korean', 'kr' => 'Kanuri', 'ks' => 'Kashmiri', 'ku' => 'Kurdish',
        'kv' => 'Komi', 'kw' => 'Cornish', 'ky' => 'Kirghiz, Kyrgyz', 'la' => 'Latin',
        'lb' => 'Luxembourgish, Letzeburgesch', 'lg' => 'Luganda', 'li' => 'Limburgish, Limburgan, Limburger',
        'ln' => 'Lingala', 'lo' => 'Lao', 'lt' => 'Lithuanian', 'lu' => 'Luba-Katanga',
        'lv' => 'Latvian', 'mg' => 'Malagasy', 'mh' => 'Marshallese', 'mi' => 'Maori',
        'mk' => 'Macedonian', 'ml' => 'Malayalam', 'mn' => 'Mongolian', 'mr' => 'Marathi (Mara?hi)',
        'ms' => 'Malay', 'mt' => 'Maltese', 'my' => 'Burmese', 'na' => 'Nauru', 'nb' => 'Norwegian BokmÃ¥l',
        'nd' => 'North Ndebele', 'ne' => 'Nepali', 'ng' => 'Ndonga', 'nl' => 'Dutch',
        'nn' => 'Norwegian Nynorsk', 'no' => 'Norwegian', 'nr' => 'South Ndebele',
        'nv' => 'Navajo, Navaho', 'ny' => 'Chichewa; Chewa; Nyanja', 'oc' => 'Occitan',
        'oj' => 'Ojibwe, Ojibwa', 'om' => 'Oromo', 'or' => 'Oriya', 'os' => 'Ossetian, Ossetic',
        'pa' => 'Panjabi, Punjabi', 'pi' => 'Pali', 'pl' => 'Polish', 'ps' => 'Pashto, Pushto',
        'pt' => 'Portuguese', 'qu' => 'Quechua', 'rm' => 'Romansh', 'rn' => 'Kirundi',
        'ro' => 'Romanian, Moldavian, Moldovan', 'ru' => 'Russian', 'rw' => 'Kinyarwanda',
        'sa' => 'Sanskrit (Sa?sk?ta)', 'sc' => 'Sardinian', 'sd' => 'Sindhi', 'se' => 'Northern Sami',
        'sg' => 'Sango', 'si' => 'Sinhala, Sinhalese', 'sk' => 'Slovak', 'sl' => 'Slovene',
        'sm' => 'Samoan', 'sn' => 'Shona', 'so' => 'Somali', 'sq' => 'Albanian',
        'sr' => 'Serbian', 'ss' => 'Swati', 'st' => 'Southern Sotho', 'su' => 'Sundanese',
        'sv' => 'Swedish', 'sw' => 'Swahili', 'ta' => 'Tamil', 'te' => 'Telugu',
        'tg' => 'Tajik', 'th' => 'Thai', 'ti' => 'Tigrinya', 'tk' => 'Turkmen', 'tl' => 'Tagalog',
        'tn' => 'Tswana', 'to' => 'Tonga (Tonga Islands)', 'tr' => 'Turkish', 'ts' => 'Tsonga',
        'tt' => 'Tatar', 'tw' => 'Twi', 'ty' => 'Tahitian', 'ug' => 'Uighur, Uyghur',
        'uk' => 'Ukrainian', 'ur' => 'Urdu', 'uz' => 'Uzbek', 've' => 'Venda', 'vi' => 'Vietnamese',
        'vo' => 'VolapÃ¼k', 'wa' => 'Walloon', 'wo' => 'Wolof', 'xh' => 'Xhosa',
        'yi' => 'Yiddish', 'yo' => 'Yoruba', 'za' => 'Zhuang, Chuang', 'zh' => 'Chinese',
        'zu' => 'Zulu',);
    private $timezone = array();

    public function index()
    {
        if(!defined("SMS_MODULE"))
        {
            if(file_exists("model/sms/hooks.php"))
            {
                require_once("model/sms/hooks.php");
                require_once("model/sms/sms.php");
                $hooks = new ModelSmsHooks($this->registry);
                require_once($hooks->getLanguageDirectory());
            }
        }

        $this->load->language('extension/module/cartsms');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');
        $this->load->model('sms/main');

        if(($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate())
        {
            $this->model_setting_setting->editSetting('sms', $this->request->post + array(
                "sms_status" => 1));

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'], 'SSL'));
        }

        $data['heading_title'] = $this->language->get('heading_title');

        $smsSettings = $this->model_setting_setting->getSetting("sms");
        if(isset($smsSettings["sms_lang"]))
        {
            $lang = $smsSettings["sms_lang"];
        }
        else
        {
            $lang = "en";
        }
        $d = dir(DIR_APPLICATION . "model/sms/languages");
        $data['lang'] = "";
        //while (false !== ($entry = $d->read())) {
        foreach(scandir(DIR_APPLICATION . "model/sms/languages") as $entry)
        {
            $selected = "";
            if($entry == $lang)
            {
                $selected = " selected";
            }
            if(is_dir(DIR_APPLICATION . "model/sms/languages/" . $entry) && $entry != ".." && $entry != ".")
            {
                $data['lang'] .= "<option value=\"" . $entry . "\" " . $selected . ">" . $entry . " - " . self::$lang_iso[$entry] . "</option>";
            }
        }

        $smsSettings = $this->model_setting_setting->getSetting("sms");
                                   
        $this->getTimezone();

        if(!in_array($smsSettings["sms_timezone"], $this->timezone))
            $this->timezone[] = $smsSettings["sms_timezone"];

        $data['timezone'] = $this->timezone;

        $data['timezone_actual'] = $smsSettings["sms_timezone"];

        $data['entry_language'] = $this->language->get('entry_language');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        if(isset($this->error['warning']))
        {
            $data['error_warning'] = $this->error['warning'];
        }
        else
        {
            $data['error_warning'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->getLink('common/dashboard'),
            'separator' => false
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->getLink('extension/extension'),
            'separator' => ' :: '
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->getLink('extension/module/cartsmsb'),
            'separator' => ' :: '
        );

        $data['action'] = $this->getLink('extension/module/cartsms');

        $data['cancel'] = $this->getLink('extension/extension');



        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');
        $this->response->setOutput($this->load->view('extension/module/cartsms.tpl', $data));
    }

    protected function validate()
    {
        if(!$this->user->hasPermission('modify', 'extension/module/cartsms'))
        {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if(!$this->error)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public function install()
    {
        $this->load->model('extension/event');
        $this->model_extension_event->deleteEvent('cartsms');

        $this->load->model('sms/main');
        $this->load->model('setting/setting');

        $this->model_sms_main->createTable();

        $this->getTimezone();

        $this->model_setting_setting->editSetting('sms', array('sms_lang' => 'en',
            'sms_status' => 1, 'sms_timezone' => $this->timezone[0]));

        $this->load->model('user/user_group');

        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/profile');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/about');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/admin');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/answers');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/credit');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/customer');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/history');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/marketing');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/send');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/settings');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/smscharging');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'sms/statistics');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'module/sms');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'extension/module/cartsms');
        $this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'extension/module/cartsms');

        $version = (int)str_replace(".", "", VERSION);   

        $this->model_extension_event->addEvent('cartsms', 'admin/model/sale/return/addReturnHistory/after', 'sms/events/returnGoodsStatus');
        $this->model_extension_event->addEvent('cartsms', 'catalog/model/checkout/order/addOrderHistory/after', 'sms/events/changeOrderStatusHook');
        $this->model_extension_event->addEvent('cartsms', 'catalog/sms.post.order.add.success', 'sms/events/orderAddHook');
        $this->model_extension_event->addEvent('cartsms', 'catalog/model/account/customer/addCustomer/after', 'sms/events/customerAddHook');
        $this->model_extension_event->addEvent('cartsms', 'catalog/model/account/return/addReturn/after', 'sms/events/returnGoods');
        $this->model_extension_event->addEvent('cartsms', 'admin/model/catalog/product/deleteProduct/before', 'sms/events/productDeleteHook');
        $this->model_extension_event->addEvent('cartsms', 'catalog/sms.post.contactformmail.send', 'sms/events/contactFormHook');


        $refresh = new ControllerExtensionModification($this->registry);
        $refresh->refresh();
    }

    public function uninstall()
    {

        $this->load->model('extension/event');

        $this->load->model('sms/main');
        $this->load->model('user/user_group');
        $this->model_sms_main->deleteTable();

        $this->load->model('setting/setting');
        $this->model_setting_setting->deleteSetting('sms');

        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/profile');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/about');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/admin');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/answers');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/credit');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/customer');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/history');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/marketing');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/send');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/settings');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/smscharging');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'sms/statistics');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'access', 'extension/module/cartsms');
        $this->model_user_user_group->removePermission($this->user->getGroupId(), 'modify', 'extension/module/cartsms');

        $this->model_extension_event->deleteEvent('cartsms');
    }

    private function getLink($target, $variables = "")
    {
        return $this->url->link($target, 'token=' . $this->session->data['token'] . $variables, 'SSL');
    }

    private function getTimezone()
    {
        $country = array();
        $result = $this->model_sms_main->Execute("SELECT * FROM " . DB_PREFIX . "setting where `key`='config_country_id'");

        if($result->num_rows)
        {
            foreach($result->rows as $item)
            {
                $country[] = $item["value"];
                if(!isset($item["store_id"]) || $item["store_id"] == 0)
                {
                    $country[] = $item["value"];
                }
            }

            $result = $this->model_sms_main->Execute("SELECT * FROM " . DB_PREFIX . "country where country_id IN (" . implode($country, ",") . ")");

            if($result->num_rows)
            {
                foreach($result->rows as $row)
                {
                    $isoCode = $row["iso_code_2"];
                    $timezoneArray = DateTimeZone::listIdentifiers(4096, $isoCode);
                    foreach($timezoneArray as $timezone)
                    {
                        $this->timezone[] = $timezone;
                    }

                    if(count($this->timezone) < 0)
                    {
                        $this->timezone[] = 'Europe/Prague';
                    }
                }
            }
            else
            {
                $this->timezone[] = 'Europe/Prague';
            }
        }
        else
        {
            $this->timezone[] = 'Europe/Prague';
        }
    }

}
