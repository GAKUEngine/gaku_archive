module Gaku
  class Disposal
    class << self

      def students
        Student.unscoped.deleted
      end

      def teachers
        Teacher.unscoped.deleted
      end

      def guardians
        Guardian.unscoped.deleted
      end

      def exams
        Exam.unscoped.deleted
      end

      def course_groups
        CourseGroup.unscoped.deleted
      end

      def attachments
        Attachment.includes(:attachable).unscoped.deleted
      end

      def student_addresses
        Address.includes(:addressable, :country).unscoped.deleted.students
      end

      def teacher_addresses
        Address.includes(:addressable, :country).unscoped.deleted.teachers
      end

      def student_contacts
        Contact.includes(:contactable, :contact_type).unscoped.deleted.students
      end

      def teacher_contacts
        Contact.includes(:contactable, :contact_type).unscoped.deleted.teachers
      end

    end
  end
end
