module Gaku
  class Disposal
    class << self

      def students
        Student.deleted
      end

      def teachers
        Teacher.deleted
      end

      def guardians
        Guardian.deleted
      end

      def exams
        Exam.deleted
      end

      def course_groups
        CourseGroup.deleted
      end

      def attachments
        Attachment.includes(:attachable).deleted
      end

      def student_addresses
        Address.includes(:addressable, :country).deleted.students
      end

      def teacher_addresses
        Address.includes(:addressable, :country).deleted.teachers
      end

      def student_contacts
        Contact.includes(:contactable, :contact_type).deleted.students
      end

      def teacher_contacts
        Contact.includes(:contactable, :contact_type).deleted.teachers
      end

    end
  end
end
