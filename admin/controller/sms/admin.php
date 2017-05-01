<?php define("SMS_CONTROLER_URL", DIR_APPLICATION . 'model/sms/'); require_once (defined("SMS_CONTROLER_URL")?SMS_CONTROLER_URL:"") .'smsController.php'; class ControllerSmsAdmin extends SmsController { public $res_hooks = null; public $res_groups = null; public $res_hooks_info = null; public $res_hooks_template = null; public $res_hooks_notice = null; public $res_hooks_background = null; public $res_hooks_icon = null; public $js = ""; public $res_hooks_admin = null; public $res_hooks_admin_ids = null; public $use_unicode = 0; public $pole_profil = null; public $store_arr = null; public function index() { parent::index(); } public function display() { $i18b46d03fcb664397e59c34a4cb7b424d837711f = $this->f8e81eeb55aa619a8a91f61cbb7ddcea660e20432(); $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee = parent::display(); $this->store_arr = $this->getStore(false); $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= " <script language=\"javascript\"> var minus = '" . self::$minusImg . "'; var plus = '" . self::$plusImg . "'; var chartext = '" . v_adminsms_jschars . "'; var v_adminsms_preview = '" . v_adminsms_preview . "'; var v_adminsms_jstotalsms = '" . v_adminsms_jstotalsms . "'; function getTemplateValues(text) { " . $this->loadvariables() . " return text; } </script> "; $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= '<script type="text/javascript" src="'.DIR_SMS_JS.'sms.js"></script>'; $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= '<script type="text/javascript" src="'.DIR_SMS_JS.'jquery.at.caret.min.js"></script>'; if(count($i18b46d03fcb664397e59c34a4cb7b424d837711f) > 0) { $this->loadhooks(); $this->loadHooksForOrdersAdmin(); $this->loadHooksForReturnsAdmin(); $this->loadadminhooks(); $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= ' <h2>' . v_adminsms_adminsms . '</h2> <p>' . v_adminsms_description . '</p> '; $id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe = $this->Execute("SELECT * FROM " . DB_PREFIX . "sp_hooks_unicode where area='default' and type='admin'"); if($id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe->num_rows) { $this->use_unicode = 1; } $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= ' <script language="javascript"> var unicode = ' . $this->use_unicode . '; </script> <fieldset> <legend><img src="' . self::$setingsImg . '" alt="' . v_adminsms_unicodesms . '" /> ' . v_adminsms_unicodesms . '</legend> <form action="" method="post"> <p>' . v_adminsms_unicodetext . '</p> ' . self::getInput(array("type" => "checkbox", "name" => "unicode", "value" => 1), $this->use_unicode) . ' ' . v_adminsms_unicode . ' ' . self::getInput(array("type" => "submit", "name" => "submitAdminUnicode", "value" => v_adminsms_unicodesave, "class" => "button")) . ' </form> </fieldset> '; $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= $this->f6a6916b02bcc0f6812dc1ce98f0ad5ff3ccb2394(); } else { $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= ' <h2>' . v_adminsms_adminsmsnotactive . '</h2> <p>' . v_adminsms_addadmin . '</p> '; } return $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee; } public function postProcess($if7ac7ffb0e11bffa95681698138e923b4fd51990 = NULL, $i120dfeb2f4db76e8e52ed01ad8e678e2b9fa3bb9 = NULL, $i4df8c509b6936a0640c1594ca9b38a0a55a9562f = NULL) { if($if7ac7ffb0e11bffa95681698138e923b4fd51990 == NULL && $i120dfeb2f4db76e8e52ed01ad8e678e2b9fa3bb9 == NULL) { return self::POST_ERROR; } if(isset($if7ac7ffb0e11bffa95681698138e923b4fd51990['submitAdminSMS'])) { $this->store_arr = $this->getStore(false); $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 = htmlentities($if7ac7ffb0e11bffa95681698138e923b4fd51990['status'], ENT_COMPAT, 'UTF-8'); $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 = htmlentities($if7ac7ffb0e11bffa95681698138e923b4fd51990['name'], ENT_COMPAT, 'UTF-8'); $id960ddd9e843150fe4875c48e896395edac7ca1de32585eb1b56e8e02465722681ae17f4122f4b7d = htmlentities($if7ac7ffb0e11bffa95681698138e923b4fd51990['text'], ENT_COMPAT, 'UTF-8'); $id960ddd9e843150fe4875c48e896395edac7ca1d0cd67cfa1526e998d20918ab37cbdee774b5770e = htmlentities($if7ac7ffb0e11bffa95681698138e923b4fd51990['ids'], ENT_COMPAT, 'UTF-8'); $id960ddd9e843150fe4875c48e896395edac7ca1d31d5b6fbcdbd23e3f922662e7e7bc4ad081031f4 = explode(";", $id960ddd9e843150fe4875c48e896395edac7ca1d0cd67cfa1526e998d20918ab37cbdee774b5770e); if(!strlen($id960ddd9e843150fe4875c48e896395edac7ca1de32585eb1b56e8e02465722681ae17f4122f4b7d)) { $this->_errors[] = v_adminsms_invalidtext; return self::POST_ERROR; } $id960ddd9e843150fe4875c48e896395edac7ca1dfc7624866df97a3fb16e676c7088a5e6f5331d3c = array(); $id960ddd9e843150fe4875c48e896395edac7ca1d40d74ab0d23bc27d002f72775daca8e7364ee91d = $this->store_arr; foreach($this->store_arr as $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 => $id960ddd9e843150fe4875c48e896395edac7ca1dbd0578718e12a692b299a588249092e07aac601e) { for($id960ddd9e843150fe4875c48e896395edac7ca1da01fe65afb7ae8fec6d58ac17a11f7d179fee1a2 = 0; $id960ddd9e843150fe4875c48e896395edac7ca1da01fe65afb7ae8fec6d58ac17a11f7d179fee1a2 < count($id960ddd9e843150fe4875c48e896395edac7ca1d31d5b6fbcdbd23e3f922662e7e7bc4ad081031f4); $id960ddd9e843150fe4875c48e896395edac7ca1da01fe65afb7ae8fec6d58ac17a11f7d179fee1a2++) { $id960ddd9e843150fe4875c48e896395edac7ca1d67119957a10cd5f68dc472b54f90f2898aec457b = 0; if(isset($if7ac7ffb0e11bffa95681698138e923b4fd51990['adminID' . $id960ddd9e843150fe4875c48e896395edac7ca1d31d5b6fbcdbd23e3f922662e7e7bc4ad081031f4[$id960ddd9e843150fe4875c48e896395edac7ca1da01fe65afb7ae8fec6d58ac17a11f7d179fee1a2] . "_" . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695])) { $id960ddd9e843150fe4875c48e896395edac7ca1d67119957a10cd5f68dc472b54f90f2898aec457b = htmlentities($if7ac7ffb0e11bffa95681698138e923b4fd51990['adminID' . $id960ddd9e843150fe4875c48e896395edac7ca1d31d5b6fbcdbd23e3f922662e7e7bc4ad081031f4[$id960ddd9e843150fe4875c48e896395edac7ca1da01fe65afb7ae8fec6d58ac17a11f7d179fee1a2] . "_" . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695], ENT_COMPAT, 'UTF-8'); } if($id960ddd9e843150fe4875c48e896395edac7ca1d67119957a10cd5f68dc472b54f90f2898aec457b > 0) { $id960ddd9e843150fe4875c48e896395edac7ca1dfc7624866df97a3fb16e676c7088a5e6f5331d3c[$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695][] = $id960ddd9e843150fe4875c48e896395edac7ca1d31d5b6fbcdbd23e3f922662e7e7bc4ad081031f4[$id960ddd9e843150fe4875c48e896395edac7ca1da01fe65afb7ae8fec6d58ac17a11f7d179fee1a2]; } } } $this->Execute("DELETE FROM " . DB_PREFIX . "sp_hooks_admins_multi WHERE name='" . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . "' AND status='" . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 . "'"); foreach($id960ddd9e843150fe4875c48e896395edac7ca1d40d74ab0d23bc27d002f72775daca8e7364ee91d as $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 => $id960ddd9e843150fe4875c48e896395edac7ca1dbd0578718e12a692b299a588249092e07aac601e) { if(isset($id960ddd9e843150fe4875c48e896395edac7ca1dfc7624866df97a3fb16e676c7088a5e6f5331d3c[$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) && count($id960ddd9e843150fe4875c48e896395edac7ca1dfc7624866df97a3fb16e676c7088a5e6f5331d3c[$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) > 0) { $this->Execute("INSERT INTO " . DB_PREFIX . "sp_hooks_admins_multi VALUES ('" . $this->escape($id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03) . "','" . $this->escape($id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8) . "','" . $this->escape($id960ddd9e843150fe4875c48e896395edac7ca1de32585eb1b56e8e02465722681ae17f4122f4b7d) . "','" . implode(";", $id960ddd9e843150fe4875c48e896395edac7ca1dfc7624866df97a3fb16e676c7088a5e6f5331d3c[$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) . "','" . $this->escape($id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695) . "')"); } } $this->displayConfirmation(v_adminsms_smssaved); return self::POST_OK; } elseif(isset($if7ac7ffb0e11bffa95681698138e923b4fd51990['submitAdminUnicode'])) { if(isset($if7ac7ffb0e11bffa95681698138e923b4fd51990['unicode'])) { $id960ddd9e843150fe4875c48e896395edac7ca1d6c08bf61f437a7df1241311fb1b61cb26dfddd64 = htmlentities($if7ac7ffb0e11bffa95681698138e923b4fd51990['unicode'], ENT_COMPAT, 'UTF-8'); } else { $id960ddd9e843150fe4875c48e896395edac7ca1d6c08bf61f437a7df1241311fb1b61cb26dfddd64 = 0; } $id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe = $this->Execute("DELETE FROM " . DB_PREFIX . "sp_hooks_unicode WHERE area='default' AND type='admin' "); if($id960ddd9e843150fe4875c48e896395edac7ca1d6c08bf61f437a7df1241311fb1b61cb26dfddd64) { $id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe = $this->Execute("INSERT INTO " . DB_PREFIX . "sp_hooks_unicode VALUES ('default'," . $this->escape($id960ddd9e843150fe4875c48e896395edac7ca1d6c08bf61f437a7df1241311fb1b61cb26dfddd64) . ",'admin') "); } $this->displayConfirmation(v_adminsms_unicodesaved); return self::POST_OK; } return self::POST_ERROR; } public function loadhooks() { foreach(SmsVariables::$hooks as $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d) { if($id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d["owner"] != 2 && $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d["owner"] != 0) { $this->res_groups[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['group']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['status']][] = $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']; $this->res_hooks_info[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['status']] = $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['info']; $this->res_hooks_template[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['status']] = $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['template']; $this->res_hooks_notice[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['status']] = $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['notice']; $this->res_hooks_background[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['status']] = $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['background']; $this->res_hooks_icon[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['status']] = $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['icon']; } } return true; } public function loadadminhooks() { $id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe = $this->Execute("SELECT * FROM " . DB_PREFIX . "sp_hooks_admins_multi"); if($id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe->num_rows) { foreach($id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe->rows as $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d) { $this->res_hooks_admin[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['status']] = stripslashes($id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['smstext']); if(strlen($id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['adminIDs']) > 0) { if(strlen($id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['adminIDs']) > 0) { $this->res_hooks_admin_ids[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['status']][$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['storeID']] = explode(";", $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['adminIDs']); } } } } return true; } private function ff91a12b15567fc5332be7b7348cb2b6c7b1a5f89($id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03, $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8, $id960ddd9e843150fe4875c48e896395edac7ca1dbd0578718e12a692b299a588249092e07aac601e, $i0305440456b2fa9bd57df24c48148031418ab63a, $id960ddd9e843150fe4875c48e896395edac7ca1d45a340720dd557820afa360e925b8fe31b7e6afd) { $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee = ' <form name="form' . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 . '" action="" method="post" class="ajax"> <table class="formTable"> <tr> <td class="bottom padv0">' . self::getLabel(v_adminsms_smstext) . '</td> <td class="bottom padv0">' . self::getLabel(v_adminsms_preview, 'id="label' . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 . '"') . '</td> <td colspan="3">' . self::getLabel(v_adminsms_admins) . '</td> </tr> <tr> <td rowspan="2" class="hookTextArea top">' . self::getTextArea(array("name" => "text", "id" => "textArea" . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8, "onchange" => "countHook('" . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 . "')", "onkeyup" => "countHook('" . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 . "')", "style" => "width:290px;height:100px;"), $id960ddd9e843150fe4875c48e896395edac7ca1dbd0578718e12a692b299a588249092e07aac601e) . '</td> <td rowspan="2" class="hookTextArea top">' . self::getTextArea(array("id" => "textfake" . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8, "name" => "textfake", "disabled" => "disabled", "style" => "width:290px;height:100px;")) . '</td> <td colspan="3">' . $this->f8e81eeb55aa619a8a91f61cbb7ddcea660e204323($i0305440456b2fa9bd57df24c48148031418ab63a) . '</td> </tr> <tr> <td class="top w50">' . self::getInput(array("type" => "submit", "value" => v_adminsms_save, "name" => "submitAdminSMS", "class" => "button")) . '</td> <td class="top w50">' . self::getInput(array("type" => "button", "value" => v_adminsms_cancel, "title" => v_adminsms_restoreunsaved, "class" => "button", "onClick" => "this.form.reset();countHook('" . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 . "')")) . '</td> <td></td> </tr> <tr> <td colspan="5">' . v_smsprestashop_notice . '<br /><br />' . $this->noticeEval($id960ddd9e843150fe4875c48e896395edac7ca1d45a340720dd557820afa360e925b8fe31b7e6afd, $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8) . '</td> </tr> </table> ' . self::getInput(array("type" => "hidden", "name" => "status", "value" => "$id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8")) . ' ' . self::getInput(array("type" => "hidden", "name" => "name", "value" => "$id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03")) . ' ' . self::getInput(array("type" => "hidden", "name" => "ajax-id", "value" => "" . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 . "")) . ' </form> <script language="javascript"> countHook(\'' . $id960ddd9e843150fe4875c48e896395edac7ca1d32f990de0fa2e05c03d31bf5021f8ede63166d03 . $id960ddd9e843150fe4875c48e896395edac7ca1d4786607b2e7dfa9462edea09fe32c7ff3fc405e8 . '\'); </script> '; return $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee; } private function f8e81eeb55aa619a8a91f61cbb7ddcea660e20432() { $ib1199182837e705aae8d93f525c88b1184f9395d = array(); $id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe = $this->Execute("SELECT * FROM " . DB_PREFIX . "sp_admins"); if($id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe->num_rows) { foreach($id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe->rows as $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d) { $ib1199182837e705aae8d93f525c88b1184f9395d[$id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['ID']] = $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name']; } } return $ib1199182837e705aae8d93f525c88b1184f9395d; } private function f8e81eeb55aa619a8a91f61cbb7ddcea660e204323($i0305440456b2fa9bd57df24c48148031418ab63a = array()) { $id960ddd9e843150fe4875c48e896395edac7ca1d0cd67cfa1526e998d20918ab37cbdee774b5770e = array(); $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee = ' <table class="resultTable"> <tbody> '; $id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe = $this->Execute("SELECT * FROM " . DB_PREFIX . "sp_admins"); if($id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe->num_rows) { foreach($id960ddd9e843150fe4875c48e896395edac7ca1d83d1339527a9dc91b02fa99420eb13b0cd47adfe->rows AS $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d) { $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= ' <tr> <td class="w100">' . $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['name'] . '</td> <td> '; foreach($this->store_arr as $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 => $id960ddd9e843150fe4875c48e896395edac7ca1dbd0578718e12a692b299a588249092e07aac601e) { $id960ddd9e843150fe4875c48e896395edac7ca1d638555cbe7ed2af60dac0c7d163508bf34c13283 = false; if(isset($i0305440456b2fa9bd57df24c48148031418ab63a[$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) && is_array($i0305440456b2fa9bd57df24c48148031418ab63a[$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695])) { if(in_array($id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['ID'], $i0305440456b2fa9bd57df24c48148031418ab63a[$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695])) { $id960ddd9e843150fe4875c48e896395edac7ca1d638555cbe7ed2af60dac0c7d163508bf34c13283 = true; } } $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= self::getInput(array("type" => "checkbox", "name" => "adminID" . $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['ID'] . "_" . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695, "value" => 1), $id960ddd9e843150fe4875c48e896395edac7ca1d638555cbe7ed2af60dac0c7d163508bf34c13283) . " " . $id960ddd9e843150fe4875c48e896395edac7ca1dbd0578718e12a692b299a588249092e07aac601e; } $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= "</td> </tr>"; $id960ddd9e843150fe4875c48e896395edac7ca1d0cd67cfa1526e998d20918ab37cbdee774b5770e[] = $id960ddd9e843150fe4875c48e896395edac7ca1d2e93e61d67c274d891066238c74ba6322d527b6d['ID']; } } $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= self::getInput(array("type" => "hidden", "name" => "ids", "value" => implode(";", $id960ddd9e843150fe4875c48e896395edac7ca1d0cd67cfa1526e998d20918ab37cbdee774b5770e))); $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= ' </tbody> </table>'; return $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee; } public function ajaxSubmitAdminSMS($id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06) { $this->store_arr = $this->getStore(false); $this->setAction($id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["ajax-id"]); $this->disableScrollUp(); $this->loadadminhooks(); if(isset($this->res_hooks_admin_ids[$id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["name"]][$id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["status"]]) && $this->res_hooks_admin_ids[$id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["name"]][$id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["status"]] > 0) { $this->sendSnippet("active" . $id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["name"] . $id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["status"], '<span style="cursor:help;" title="' . v_adminsms_smsactive . '"><img src="' . self::$acceptImg . '" alt="' . v_adminsms_smsactive . '" /></span>'); } else { $this->sendSnippet("active" . $id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["name"] . $id960ddd9e843150fe4875c48e896395edac7ca1d271d128766e9be75d50f8a49080f6dc19da16d06["status"], '<span style="cursor:help;" title="' . v_adminsms_smsnotactive . '"><img src="' . self::$denyImg . '" alt="' . v_adminsms_smsnotactive . '" /></span>'); } } private function f6a6916b02bcc0f6812dc1ce98f0ad5ff3ccb2394() { $i849621bc8bf35945f6151e95715e221f5996c107 = array(0 => v_adminsms_orderstatus, 1 => v_adminsms_order, 2 => v_adminsms_account, 3 => v_adminsms_product, 4 => v_contact_form, 5 => v_hook_return); $id960ddd9e843150fe4875c48e896395edac7ca1d629aa4657145612a902950480150ba4a815dd832 = array(0 => self::$orderImg, 1 => self::$orderImg, 2 => self::$adminCustomerImg, 3 => self::$catalogImg, 4 => self::$catalogImg, 5 => self::$sendImg); $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee = ""; for($id960ddd9e843150fe4875c48e896395edac7ca1d = 0; $id960ddd9e843150fe4875c48e896395edac7ca1d < 6; $id960ddd9e843150fe4875c48e896395edac7ca1d++) { if(!isset($this->res_groups[$id960ddd9e843150fe4875c48e896395edac7ca1d])) { continue; } $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= ' <fieldset> <legend><img src="' . $id960ddd9e843150fe4875c48e896395edac7ca1d629aa4657145612a902950480150ba4a815dd832[$id960ddd9e843150fe4875c48e896395edac7ca1d] . '" alt="" /> ' . $i849621bc8bf35945f6151e95715e221f5996c107[$id960ddd9e843150fe4875c48e896395edac7ca1d] . '</legend> <table class="resultTable"> <tbody> '; foreach($this->res_groups[$id960ddd9e843150fe4875c48e896395edac7ca1d] as $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 => $id960ddd9e843150fe4875c48e896395edac7ca1dbd0578718e12a692b299a588249092e07aac601e) { foreach($id960ddd9e843150fe4875c48e896395edac7ca1dbd0578718e12a692b299a588249092e07aac601e as $id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b) { if(isset($this->res_hooks_admin_ids[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) && count($this->res_hooks_admin_ids[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) > 0) { $i2e4fdeb098e7d0ae23dea13d874d03dd7784ea11 = '<span id="snippet-active' . $id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 . '"><span style="cursor:help;" title="' . v_adminsms_smsactive . '"><img src="' . self::$acceptImg . '" alt="' . v_adminsms_smsactive . '" /></span></span>'; } else { $i2e4fdeb098e7d0ae23dea13d874d03dd7784ea11 = '<span id="snippet-active' . $id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 . '"><span style="cursor:help;" title="' . v_adminsms_smsnotactive . '"><img src="' . self::$denyImg . '" alt="' . v_adminsms_smsnotactive . '" /></span></span>'; } if(isset($this->res_hooks_admin[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) && strlen($this->res_hooks_admin[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) > 0) { $ia11096c0109e1656e0b04e190a7fda541ae51e56 = $this->res_hooks_admin[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]; } else { $ia11096c0109e1656e0b04e190a7fda541ae51e56 = $this->res_hooks_template[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]; } $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= ' <tr ' . self::isEven($id960ddd9e843150fe4875c48e896395edac7ca1d0018d0cb00e9a7ab65cdbd7f1c6b001b1e0222a6, "even") . '> <td> <a id="displayText' . $id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 . '" href="javascript:" class="noUnderline" onclick="toggleInfo(\'' . $id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 . '\');"> <img src="' . self::$plusImg . '" id="toggleButton' . $id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 . '"/> ' . (($id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b == "actionOrderStatusPostUpdate") ? (v_adminsms_statusupdate) : ($id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b)) . ' - <span class="orderStatusHighlight" '.(defined("SMS_ENABLE_COLOR")?('style="border: 2px solid '.$this->res_hooks_background[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695].';"'):"").'>' . $this->res_hooks_info[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695] . '</span> </a> </td> <td class="right middle">' . self::getAjaxLoader($id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695) . ' ' . $i2e4fdeb098e7d0ae23dea13d874d03dd7784ea11 . '</td> </tr> <tr class="hidden noHover" id="toggleText' . $id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b . $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695 . '"> <td colspan="2">' . $this->ff91a12b15567fc5332be7b7348cb2b6c7b1a5f89( $id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b, $id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695, $ia11096c0109e1656e0b04e190a7fda541ae51e56, ((isset($this->res_hooks_admin_ids[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695])) ? ($this->res_hooks_admin_ids[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) : (array())), ((isset($this->res_hooks_notice[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695])) ? ($this->res_hooks_notice[$id960ddd9e843150fe4875c48e896395edac7ca1d69f7275fe4199c3791f18dc1326300013be7fa9b][$id960ddd9e843150fe4875c48e896395edac7ca1d8a31cdb91ad25bea0cf23b0dd384a4bd00af6695]) : (array())) ) . ' </td> </tr> '; } } $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee .= ' </tbody> </table> </fieldset> '; } return $id960ddd9e843150fe4875c48e896395edac7ca1d02fcabda2448d40bdb76bd10f9e95950039649ee; } } 