<?php

/**
 * A helper file for Dcat Admin, to provide autocomplete information to your IDE
 *
 * This file should not be included in your code, only analyzed by your IDE!
 *
 * @author jqh <841324345@qq.com>
 */
namespace Dcat\Admin {
    use Illuminate\Support\Collection;

    /**
     * @property Grid\Column|Collection id
     * @property Grid\Column|Collection username
     * @property Grid\Column|Collection name
     * @property Grid\Column|Collection roles
     * @property Grid\Column|Collection permissions
     * @property Grid\Column|Collection created_at
     * @property Grid\Column|Collection updated_at
     * @property Grid\Column|Collection avatar
     * @property Grid\Column|Collection user
     * @property Grid\Column|Collection method
     * @property Grid\Column|Collection path
     * @property Grid\Column|Collection ip
     * @property Grid\Column|Collection input
     * @property Grid\Column|Collection slug
     * @property Grid\Column|Collection version
     * @property Grid\Column|Collection alias
     * @property Grid\Column|Collection authors
     * @property Grid\Column|Collection enable
     * @property Grid\Column|Collection imported
     * @property Grid\Column|Collection config
     * @property Grid\Column|Collection require
     * @property Grid\Column|Collection require_dev
     * @property Grid\Column|Collection type
     * @property Grid\Column|Collection amount
     * @property Grid\Column|Collection havedJoin
     * @property Grid\Column|Collection join_money
     * @property Grid\Column|Collection rate
     * @property Grid\Column|Collection join_type
     * @property Grid\Column|Collection expire_time
     * @property Grid\Column|Collection status
     * @property Grid\Column|Collection password
     * @property Grid\Column|Collection remember_token
     * @property Grid\Column|Collection extra_json
     * @property Grid\Column|Collection site_title
     * @property Grid\Column|Collection plat_id
     * @property Grid\Column|Collection seo_title
     * @property Grid\Column|Collection seo_keyword
     * @property Grid\Column|Collection seo_desc
     * @property Grid\Column|Collection pc_logo
     * @property Grid\Column|Collection mobile_logo
     * @property Grid\Column|Collection conact
     * @property Grid\Column|Collection kefu
     * @property Grid\Column|Collection sms_acount
     * @property Grid\Column|Collection sms_password
     * @property Grid\Column|Collection parent_id
     * @property Grid\Column|Collection order
     * @property Grid\Column|Collection icon
     * @property Grid\Column|Collection uri
     * @property Grid\Column|Collection user_id
     * @property Grid\Column|Collection permission_id
     * @property Grid\Column|Collection menu_id
     * @property Grid\Column|Collection http_method
     * @property Grid\Column|Collection http_path
     * @property Grid\Column|Collection role_id
     * @property Grid\Column|Collection deleted_at
     * @property Grid\Column|Collection server_id
     * @property Grid\Column|Collection merchant_id
     * @property Grid\Column|Collection merchant_plat_id
     * @property Grid\Column|Collection msg_type
     * @property Grid\Column|Collection content
     * @property Grid\Column|Collection time
     * @property Grid\Column|Collection connection
     * @property Grid\Column|Collection queue
     * @property Grid\Column|Collection payload
     * @property Grid\Column|Collection exception
     * @property Grid\Column|Collection failed_at
     * @property Grid\Column|Collection have_send_money
     * @property Grid\Column|Collection is_online
     * @property Grid\Column|Collection order_num
     * @property Grid\Column|Collection nickname
     * @property Grid\Column|Collection realname
     * @property Grid\Column|Collection bank_name
     * @property Grid\Column|Collection bank_place
     * @property Grid\Column|Collection image
     * @property Grid\Column|Collection limit_max
     * @property Grid\Column|Collection money
     * @property Grid\Column|Collection trade_time
     * @property Grid\Column|Collection email
     * @property Grid\Column|Collection email_verified_at
     *
     * @method Grid\Column|Collection id(string $label = null)
     * @method Grid\Column|Collection username(string $label = null)
     * @method Grid\Column|Collection name(string $label = null)
     * @method Grid\Column|Collection roles(string $label = null)
     * @method Grid\Column|Collection permissions(string $label = null)
     * @method Grid\Column|Collection created_at(string $label = null)
     * @method Grid\Column|Collection updated_at(string $label = null)
     * @method Grid\Column|Collection avatar(string $label = null)
     * @method Grid\Column|Collection user(string $label = null)
     * @method Grid\Column|Collection method(string $label = null)
     * @method Grid\Column|Collection path(string $label = null)
     * @method Grid\Column|Collection ip(string $label = null)
     * @method Grid\Column|Collection input(string $label = null)
     * @method Grid\Column|Collection slug(string $label = null)
     * @method Grid\Column|Collection version(string $label = null)
     * @method Grid\Column|Collection alias(string $label = null)
     * @method Grid\Column|Collection authors(string $label = null)
     * @method Grid\Column|Collection enable(string $label = null)
     * @method Grid\Column|Collection imported(string $label = null)
     * @method Grid\Column|Collection config(string $label = null)
     * @method Grid\Column|Collection require(string $label = null)
     * @method Grid\Column|Collection require_dev(string $label = null)
     * @method Grid\Column|Collection type(string $label = null)
     * @method Grid\Column|Collection amount(string $label = null)
     * @method Grid\Column|Collection havedJoin(string $label = null)
     * @method Grid\Column|Collection join_money(string $label = null)
     * @method Grid\Column|Collection rate(string $label = null)
     * @method Grid\Column|Collection join_type(string $label = null)
     * @method Grid\Column|Collection expire_time(string $label = null)
     * @method Grid\Column|Collection status(string $label = null)
     * @method Grid\Column|Collection password(string $label = null)
     * @method Grid\Column|Collection remember_token(string $label = null)
     * @method Grid\Column|Collection extra_json(string $label = null)
     * @method Grid\Column|Collection site_title(string $label = null)
     * @method Grid\Column|Collection plat_id(string $label = null)
     * @method Grid\Column|Collection seo_title(string $label = null)
     * @method Grid\Column|Collection seo_keyword(string $label = null)
     * @method Grid\Column|Collection seo_desc(string $label = null)
     * @method Grid\Column|Collection pc_logo(string $label = null)
     * @method Grid\Column|Collection mobile_logo(string $label = null)
     * @method Grid\Column|Collection conact(string $label = null)
     * @method Grid\Column|Collection kefu(string $label = null)
     * @method Grid\Column|Collection sms_acount(string $label = null)
     * @method Grid\Column|Collection sms_password(string $label = null)
     * @method Grid\Column|Collection parent_id(string $label = null)
     * @method Grid\Column|Collection order(string $label = null)
     * @method Grid\Column|Collection icon(string $label = null)
     * @method Grid\Column|Collection uri(string $label = null)
     * @method Grid\Column|Collection user_id(string $label = null)
     * @method Grid\Column|Collection permission_id(string $label = null)
     * @method Grid\Column|Collection menu_id(string $label = null)
     * @method Grid\Column|Collection http_method(string $label = null)
     * @method Grid\Column|Collection http_path(string $label = null)
     * @method Grid\Column|Collection role_id(string $label = null)
     * @method Grid\Column|Collection deleted_at(string $label = null)
     * @method Grid\Column|Collection server_id(string $label = null)
     * @method Grid\Column|Collection merchant_id(string $label = null)
     * @method Grid\Column|Collection merchant_plat_id(string $label = null)
     * @method Grid\Column|Collection msg_type(string $label = null)
     * @method Grid\Column|Collection content(string $label = null)
     * @method Grid\Column|Collection time(string $label = null)
     * @method Grid\Column|Collection connection(string $label = null)
     * @method Grid\Column|Collection queue(string $label = null)
     * @method Grid\Column|Collection payload(string $label = null)
     * @method Grid\Column|Collection exception(string $label = null)
     * @method Grid\Column|Collection failed_at(string $label = null)
     * @method Grid\Column|Collection have_send_money(string $label = null)
     * @method Grid\Column|Collection is_online(string $label = null)
     * @method Grid\Column|Collection order_num(string $label = null)
     * @method Grid\Column|Collection nickname(string $label = null)
     * @method Grid\Column|Collection realname(string $label = null)
     * @method Grid\Column|Collection bank_name(string $label = null)
     * @method Grid\Column|Collection bank_place(string $label = null)
     * @method Grid\Column|Collection image(string $label = null)
     * @method Grid\Column|Collection limit_max(string $label = null)
     * @method Grid\Column|Collection money(string $label = null)
     * @method Grid\Column|Collection trade_time(string $label = null)
     * @method Grid\Column|Collection email(string $label = null)
     * @method Grid\Column|Collection email_verified_at(string $label = null)
     */
    class Grid {}

    class MiniGrid extends Grid {}

    /**
     * @property Show\Field|Collection id
     * @property Show\Field|Collection username
     * @property Show\Field|Collection name
     * @property Show\Field|Collection roles
     * @property Show\Field|Collection permissions
     * @property Show\Field|Collection created_at
     * @property Show\Field|Collection updated_at
     * @property Show\Field|Collection avatar
     * @property Show\Field|Collection user
     * @property Show\Field|Collection method
     * @property Show\Field|Collection path
     * @property Show\Field|Collection ip
     * @property Show\Field|Collection input
     * @property Show\Field|Collection slug
     * @property Show\Field|Collection version
     * @property Show\Field|Collection alias
     * @property Show\Field|Collection authors
     * @property Show\Field|Collection enable
     * @property Show\Field|Collection imported
     * @property Show\Field|Collection config
     * @property Show\Field|Collection require
     * @property Show\Field|Collection require_dev
     * @property Show\Field|Collection type
     * @property Show\Field|Collection amount
     * @property Show\Field|Collection havedJoin
     * @property Show\Field|Collection join_money
     * @property Show\Field|Collection rate
     * @property Show\Field|Collection join_type
     * @property Show\Field|Collection expire_time
     * @property Show\Field|Collection status
     * @property Show\Field|Collection password
     * @property Show\Field|Collection remember_token
     * @property Show\Field|Collection extra_json
     * @property Show\Field|Collection site_title
     * @property Show\Field|Collection plat_id
     * @property Show\Field|Collection seo_title
     * @property Show\Field|Collection seo_keyword
     * @property Show\Field|Collection seo_desc
     * @property Show\Field|Collection pc_logo
     * @property Show\Field|Collection mobile_logo
     * @property Show\Field|Collection conact
     * @property Show\Field|Collection kefu
     * @property Show\Field|Collection sms_acount
     * @property Show\Field|Collection sms_password
     * @property Show\Field|Collection parent_id
     * @property Show\Field|Collection order
     * @property Show\Field|Collection icon
     * @property Show\Field|Collection uri
     * @property Show\Field|Collection user_id
     * @property Show\Field|Collection permission_id
     * @property Show\Field|Collection menu_id
     * @property Show\Field|Collection http_method
     * @property Show\Field|Collection http_path
     * @property Show\Field|Collection role_id
     * @property Show\Field|Collection deleted_at
     * @property Show\Field|Collection server_id
     * @property Show\Field|Collection merchant_id
     * @property Show\Field|Collection merchant_plat_id
     * @property Show\Field|Collection msg_type
     * @property Show\Field|Collection content
     * @property Show\Field|Collection time
     * @property Show\Field|Collection connection
     * @property Show\Field|Collection queue
     * @property Show\Field|Collection payload
     * @property Show\Field|Collection exception
     * @property Show\Field|Collection failed_at
     * @property Show\Field|Collection have_send_money
     * @property Show\Field|Collection is_online
     * @property Show\Field|Collection order_num
     * @property Show\Field|Collection nickname
     * @property Show\Field|Collection realname
     * @property Show\Field|Collection bank_name
     * @property Show\Field|Collection bank_place
     * @property Show\Field|Collection image
     * @property Show\Field|Collection limit_max
     * @property Show\Field|Collection money
     * @property Show\Field|Collection trade_time
     * @property Show\Field|Collection email
     * @property Show\Field|Collection email_verified_at
     *
     * @method Show\Field|Collection id(string $label = null)
     * @method Show\Field|Collection username(string $label = null)
     * @method Show\Field|Collection name(string $label = null)
     * @method Show\Field|Collection roles(string $label = null)
     * @method Show\Field|Collection permissions(string $label = null)
     * @method Show\Field|Collection created_at(string $label = null)
     * @method Show\Field|Collection updated_at(string $label = null)
     * @method Show\Field|Collection avatar(string $label = null)
     * @method Show\Field|Collection user(string $label = null)
     * @method Show\Field|Collection method(string $label = null)
     * @method Show\Field|Collection path(string $label = null)
     * @method Show\Field|Collection ip(string $label = null)
     * @method Show\Field|Collection input(string $label = null)
     * @method Show\Field|Collection slug(string $label = null)
     * @method Show\Field|Collection version(string $label = null)
     * @method Show\Field|Collection alias(string $label = null)
     * @method Show\Field|Collection authors(string $label = null)
     * @method Show\Field|Collection enable(string $label = null)
     * @method Show\Field|Collection imported(string $label = null)
     * @method Show\Field|Collection config(string $label = null)
     * @method Show\Field|Collection require(string $label = null)
     * @method Show\Field|Collection require_dev(string $label = null)
     * @method Show\Field|Collection type(string $label = null)
     * @method Show\Field|Collection amount(string $label = null)
     * @method Show\Field|Collection havedJoin(string $label = null)
     * @method Show\Field|Collection join_money(string $label = null)
     * @method Show\Field|Collection rate(string $label = null)
     * @method Show\Field|Collection join_type(string $label = null)
     * @method Show\Field|Collection expire_time(string $label = null)
     * @method Show\Field|Collection status(string $label = null)
     * @method Show\Field|Collection password(string $label = null)
     * @method Show\Field|Collection remember_token(string $label = null)
     * @method Show\Field|Collection extra_json(string $label = null)
     * @method Show\Field|Collection site_title(string $label = null)
     * @method Show\Field|Collection plat_id(string $label = null)
     * @method Show\Field|Collection seo_title(string $label = null)
     * @method Show\Field|Collection seo_keyword(string $label = null)
     * @method Show\Field|Collection seo_desc(string $label = null)
     * @method Show\Field|Collection pc_logo(string $label = null)
     * @method Show\Field|Collection mobile_logo(string $label = null)
     * @method Show\Field|Collection conact(string $label = null)
     * @method Show\Field|Collection kefu(string $label = null)
     * @method Show\Field|Collection sms_acount(string $label = null)
     * @method Show\Field|Collection sms_password(string $label = null)
     * @method Show\Field|Collection parent_id(string $label = null)
     * @method Show\Field|Collection order(string $label = null)
     * @method Show\Field|Collection icon(string $label = null)
     * @method Show\Field|Collection uri(string $label = null)
     * @method Show\Field|Collection user_id(string $label = null)
     * @method Show\Field|Collection permission_id(string $label = null)
     * @method Show\Field|Collection menu_id(string $label = null)
     * @method Show\Field|Collection http_method(string $label = null)
     * @method Show\Field|Collection http_path(string $label = null)
     * @method Show\Field|Collection role_id(string $label = null)
     * @method Show\Field|Collection deleted_at(string $label = null)
     * @method Show\Field|Collection server_id(string $label = null)
     * @method Show\Field|Collection merchant_id(string $label = null)
     * @method Show\Field|Collection merchant_plat_id(string $label = null)
     * @method Show\Field|Collection msg_type(string $label = null)
     * @method Show\Field|Collection content(string $label = null)
     * @method Show\Field|Collection time(string $label = null)
     * @method Show\Field|Collection connection(string $label = null)
     * @method Show\Field|Collection queue(string $label = null)
     * @method Show\Field|Collection payload(string $label = null)
     * @method Show\Field|Collection exception(string $label = null)
     * @method Show\Field|Collection failed_at(string $label = null)
     * @method Show\Field|Collection have_send_money(string $label = null)
     * @method Show\Field|Collection is_online(string $label = null)
     * @method Show\Field|Collection order_num(string $label = null)
     * @method Show\Field|Collection nickname(string $label = null)
     * @method Show\Field|Collection realname(string $label = null)
     * @method Show\Field|Collection bank_name(string $label = null)
     * @method Show\Field|Collection bank_place(string $label = null)
     * @method Show\Field|Collection image(string $label = null)
     * @method Show\Field|Collection limit_max(string $label = null)
     * @method Show\Field|Collection money(string $label = null)
     * @method Show\Field|Collection trade_time(string $label = null)
     * @method Show\Field|Collection email(string $label = null)
     * @method Show\Field|Collection email_verified_at(string $label = null)
     */
    class Show {}

    /**
     * @method \Dcat\Admin\Form\Field\Button button(...$params)
     */
    class Form {}

}

namespace Dcat\Admin\Grid {
    /**
     
     */
    class Column {}

    /**
     
     */
    class Filter {}
}

namespace Dcat\Admin\Show {
    /**
     
     */
    class Field {}
}
