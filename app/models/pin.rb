class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	has_attached_file :thumbnail, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	
	has_attached_file :video
	validates_attachment_content_type :video, :content_type => ['video/3gpp',
																'video/3gpp2',
																'video/annodex',
																'video/divx',
																'video/flv',
																'video/h264',
																'video/mp4',
																'video/mp4v-es',
																'video/mpeg',
																'video/mpeg-2',
																'video/mpeg4',
																'video/ogg',
																'video/ogm',
																'video/quicktime',
																'video/ty',
																'video/vdo',
																'video/vivo',
																'video/vnd.rn-realvideo',
																'video/vnd.vivo',
																'video/webm',
																'video/x-bin',
																'video/x-cdg',
																'video/x-divx',
																'video/x-dv',
																'video/x-flv',
																'video/x-la-asf',
																'video/x-m4v',
																'video/x-matroska',
																'video/x-motion-jpeg',
																'video/x-ms-asf',
																'video/x-ms-dvr',
																'video/x-ms-wm',
																'video/x-ms-wmv',
																'video/x-msvideo',
																'video/x-sgi-movie',
																'video/x-tivo',
																'video/avi',
																'video/x-ms-asx',
																'video/x-ms-wvx',
																'video/x-ms-wmx'],
											:message => "Unidentified format, must be 3gpp 3gpp2 annodex divx x-ms-wmx x-ms-wvx x-ms-asx x-tivo x-sgi-movie flv h264 mp4 mp4v-es mpeg mpeg-2  mpeg4 ogg ogm quicktime ty vdo vivo vnd.rn-realvideo vnd.vivo webm x-bin x-cdg x-divx x-dv x-flv x-la-asf x-m4v x-matroska x-motion-jpeg x-ms-asf x-ms-dvr x-ms-wm x-ms-wmv x-msvide avi"


end
