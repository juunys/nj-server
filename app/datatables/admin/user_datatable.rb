class Admin::UserDatatable < AjaxDatatablesRails::ActiveRecord

    extend Forwardable
    include Admin::UsersHelper

    def_delegator :@view, :check_box_tag
    def_delegator :@view, :link_to
    def_delegator :@view, :admin_user_path

    def initialize(params, opts = {})
        @view = opts[:view_context]
        super
    end

    def view_columns
        @view_columns ||= {
            name: { source: "User.first_name", cond: :like },
            email: { source: "User.email" },
            bday: { source: "User.date_of_birth" },
            status_id: { source: "User.status_user_id" },
            id: { source: "User.id"},
        }
    end

    def data
        records.map do |record|
        {
            name: link_to(record.first_name, admin_user_path(record)),
            email: record.email,
            bday: check_bday(record),
            status_id: check_status(record.status_user_id),
            id: link_to("Editar", edit_user(record)),
            DT_RowId: record.id,
        }
        end
    end

    def check_bday(record)
        if !record.date_of_birth.blank?
            return record.date_of_birth.strftime("%d/%m/%Y")
        else
            return ''
        end
    end

    def check_status(status_id)
        if status_id
            status = StatusUser.find_by(id: status_id)
            if status
                return status.name
            else
                return ''
            end
        else
            return ''
        end
    end

    def get_raw_records
        User.all
    end
end