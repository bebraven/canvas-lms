class AddProjectScores56Table < ActiveRecord::Migration
  tag :predeploy
  def change

    orig_column_names = [
      'Student ID',
      'Student Name',
      'Student Email',
      'Total Score -- Complete first 1:1 with your Leadership Coach',
      'Total Score -- Course Participation - Ace your Interviews',
      'Total Score -- Course Participation - Apply for a Job',
      'Total Score -- Course Participation - Discover Your Career Path',
      'Total Score -- Course Participation - Prepare for the Hustle to Career Bootcamp',
      'Total Score -- Course Participation - Lead Authentically',
      'Total Score -- Course Participation - Network Like a Pro',
      'Total Score -- Course Participation - Onboard to Braven',
      'Total Score -- Course Participation - Unlock Your Hustle',
      'Total Score -- Design Your Career Project',
      'Category 1 Average -- Design Your Career Project',
      'Category 2 Average -- Design Your Career Project',
      'Category 3 Average -- Design Your Career Project',
      '1.1 Action plan includes larger workstreams and/or projects broken down into actionable tasks. -- Design Your Career Project',
      '1.2 Action plan is organized in a way so that it is helpful to reference and use throughout the semester. -- Design Your Career Project',
      '1.3 Action plan includes all parts of Braven projects and appropriate start and due dates. -- Design Your Career Project',
      '1.4 Action plan includes all Braven To Dos and appropriate start and due dates. -- Design Your Career Project',
      '1.5 Action plan includes projects and exams in other courses and start and due dates. -- Design Your Career Project',
      '1.6 Action plan includes other responsibilities for home, work, and school extracurriculars and start and due dates. -- Design Your Career Project',
      '2.1 Collects a significant amount of stories from people. -- Design Your Career Project',
      '2.10 Fellow is the protagonist of the story. -- Design Your Career Project',
      '2.11 Completes hustle statement. -- Design Your Career Project',
      '2.2 Summarizes the stories people told. -- Design Your Career Project',
      '2.3 Identifies strengths apparent in stories. -- Design Your Career Project',
      '2.4 Writes a narrative about strengths grounded in real examples. -- Design Your Career Project',
      '2.5 Narrative is compelling, cohesive, and well-organized. -- Design Your Career Project',
      '2.6 Narrative is free of spelling or grammatical errors. -- Design Your Career Project',
      '2.7 Employs the PAR (problem, action, result) framework of storytelling. -- Design Your Career Project',
      '2.8 Communicates value(s) and problem, action, and result through the story by showing, not telling. -- Design Your Career Project',
      '2.9 Includes details to make stories visual and memorable. -- Design Your Career Project',
      '3.1 Creates a comprehensive backwards plan. -- Design Your Career Project',
      '3.2 Creates a logical, ambitious, and realistic timeline. -- Design Your Career Project',
      '3.3 Identifies accomplishments to date. -- Design Your Career Project',
      '3.4 Creates big goals that will lead to a career-accelerating opportunity. -- Design Your Career Project',
      '3.5 Creates milestones that will help Fellow stay on track towards big goals. -- Design Your Career Project',
      '3.6 Identifies growth areas and creates SMART personal goals that will help hold him/herself accountable. -- Design Your Career Project',
      '3.7 Identifies resources Fellow will need to gather in order to attain goals. -- Design Your Career Project',
      'Total Score -- Mock Interview (Feedback)',
      'Total Score -- Pre-Accelerator Survey',
      'Total Score -- Submit Song of Significance',
      'Total Score -- Hustle to Career Project - NLU Part 1',
      'Category 1 Average -- Hustle to Career Project - NLU Part 1',
      'Category 2 Average -- Hustle to Career Project - NLU Part 1',
      '1.1 Identifies three opportunities. -- Hustle to Career Project - NLU Part 1',
      '1.10 Completes extra sections of resume as needed. -- Hustle to Career Project - NLU Part 1',
      '1.11 Resume is free of spelling and grammatical errors. -- Hustle to Career Project - NLU Part 1',
      '1.12 Proactively seeks feedback on resume. -- Hustle to Career Project - NLU Part 1',
      '1.2 Identifies the requirements of the opportunity and ensures is qualified for the role. -- Hustle to Career Project - NLU Part 1',
      '1.3 Fills one page. -- Hustle to Career Project - NLU Part 1',
      '1.4 Formats resume professionally. -- Hustle to Career Project - NLU Part 1',
      '1.5 Completes Education section of resume. -- Hustle to Career Project - NLU Part 1',
      '1.6 Completes Experience section of resume. -- Hustle to Career Project - NLU Part 1',
      '1.7 Presents bulleted lists with strong action verbs under each experience. -- Hustle to Career Project - NLU Part 1',
      '1.8 Highlights impact in Experience section. -- Hustle to Career Project - NLU Part 1',
      '1.9 Includes Braven Accelerator or other leadership experience on resume. -- Hustle to Career Project - NLU Part 1',
      '2.1. Formats the cover letter professionally. -- Hustle to Career Project - NLU Part 1',
      '2.2 Cover letter is compelling. -- Hustle to Career Project - NLU Part 1',
      '2.3 Completes a salutation and introduction to the cover letter. -- Hustle to Career Project - NLU Part 1',
      '2.4 Uses the body of the cover letter to convince the reader of qualification for and interest in the specific role. -- Hustle to Career Project - NLU Part 1',
      '2.5 Completes a closing for the cover letter. -- Hustle to Career Project - NLU Part 1',
      '2.6 Cover letter is free of spelling and grammatical errors. -- Hustle to Career Project - NLU Part 1',
      'Total Score -- Work Block Session Participation',
      'Total Score -- Hustle to Career Project - NLU Part 2',
      'Category 1 Average -- Hustle to Career Project - NLU Part 2',
      'Category 2 Average -- Hustle to Career Project - NLU Part 2',
      '1.1 Develops a professional online brand through LinkedIn profile. -- Hustle to Career Project - NLU Part 2',
      '1.10 Email includes all the necessary components to make it strong. -- Hustle to Career Project - NLU Part 2',
      '1.11 Email is professional and concise. -- Hustle to Career Project - NLU Part 2',
      '1.12 Elevator pitch includes all necessary components. -- Hustle to Career Project - NLU Part 2',
      '1.13 Pitches self in a compelling and influential way. -- Hustle to Career Project - NLU Part 2',
      '1.14 Email is free of spelling and grammatical errors. -- Hustle to Career Project - NLU Part 2',
      '1.15 Conducts two informational interviews. -- Hustle to Career Project - NLU Part 2',
      '1.16 Plans how to leverage this connection. -- Hustle to Career Project - NLU Part 2',
      '1.17 Reflects meaningfully on the informational interviews with a growth mindset. -- Hustle to Career Project - NLU Part 2',
      '1.18 Attends one networking event and meets new professional contacts. -- Hustle to Career Project - NLU Part 2',
      '1.19 Plans how to leverage new contacts. -- Hustle to Career Project - NLU Part 2',
      '1.2 Writes a LinkedIn profile summary that includes all the necessary components. -- Hustle to Career Project - NLU Part 2',
      '1.20 Reflects meaningfully on the event with a growth mindset. -- Hustle to Career Project - NLU Part 2',
      '1.3 Writes a strong, compelling LinkedIn summary that invites people to get in touch with you. -- Hustle to Career Project - NLU Part 2',
      '1.4 Completes education section of profile. -- Hustle to Career Project - NLU Part 2',
      '1.5 Completes experience section of profile. -- Hustle to Career Project - NLU Part 2',
      '1.6 Includes skills and endorsements on profile. -- Hustle to Career Project - NLU Part 2',
      '1.7 Develops extensive professional network on LinkedIn. -- Hustle to Career Project - NLU Part 2',
      '1.8 Makes an effort to set apart from the crowd. -- Hustle to Career Project - NLU Part 2',
      '1.9 Profile is free of spelling and grammatical errors. -- Hustle to Career Project - NLU Part 2',
      '2.1 Responds with compelling experience about fit for role. -- Hustle to Career Project - NLU Part 2',
      '2.2 Responds concisely and with focus. -- Hustle to Career Project - NLU Part 2',
      '2.3 Speaks with professional polish. -- Hustle to Career Project - NLU Part 2',
      '2.4 Participates in mock interviews with professionals. -- Hustle to Career Project - NLU Part 2',
      '2.5 Writes a heartfelt thank you email to interviewer. -- Hustle to Career Project - NLU Part 2',
      '2.6 Thank you email is free of spelling and grammatical errors. -- Hustle to Career Project - NLU Part 2',
      '2.7 Reflects meaningfully on the interviews with a growth mindset. -- Hustle to Career Project - NLU Part 2'
    ]

    create_table :course56_project_scores do |t|
      orig_column_names.each do |col_name|

        new_name = col_name.gsub(/[^0-9a-z]/i, '_').to_sym
        if ['Student Name', 'Student Email'].member? col_name then
          t.string new_name
        else
          t.integer new_name
        end
      end
    end
  end
end


