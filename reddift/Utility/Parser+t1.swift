//
//  Parser+t1.swift
//  reddift
//
//  Created by sonson on 2015/04/21.
//  Copyright (c) 2015年 sonson. All rights reserved.
//

import Foundation

extension Parser {
	/**
	Parse t1 Thing.
	
	:param: data Dictionary, must be generated parsing t1 Thing.
	:returns: Comment object as Thing.
	*/
    class func parseDataInThing_t1(data:[String:AnyObject]) -> Thing {
        let comment = Comment()
		if let temp = data["subreddit_id"] as? String {
			comment.subredditId = temp
		}
		if let temp = data["banned_by"] as? String {
			comment.bannedBy = temp
		}
		if let temp = data["link_id"] as? String {
			comment.linkId = temp
		}
		if let temp = data["likes"] as? String {
			comment.likes = temp
		}
		if let temp = data["replies"] as? [String:AnyObject] {
			if let obj = parseJSON(temp) as? Listing {
				comment.replies = obj
			}
		}
//            if let temp = data["user_reports"] as? String {
//                comment.userReports = temp
//            }
		if let temp = data["saved"] as? Bool {
			comment.saved = temp
		}
		if let temp = data["id"] as? String {
			comment.id = temp
		}
		if let temp = data["gilded"] as? Int {
			comment.gilded = temp
		}
		if let temp = data["archived"] as? Bool {
			comment.archived = temp
		}
//            if let temp = data["report_reasons"] as? String {
//                comment.reportReasons = temp
//            }
		if let temp = data["author"] as? String {
			comment.author = temp
		}
		if let temp = data["parent_id"] as? String {
			comment.parentId = temp
		}
		if let temp = data["score"] as? Int {
			comment.score = temp
		}
		if let temp = data["approved_by"] as? String {
			comment.approvedBy = temp
		}
		if let temp = data["controversiality"] as? Int {
			comment.controversiality = temp
		}
		if let temp = data["body"] as? String {
			comment.body = temp
		}
		if let temp = data["edited"] as? Bool {
			comment.edited = temp
		}
		if let temp = data["author_flair_css_class"] as? String {
			comment.authorFlairCssClass = temp
		}
		if let temp = data["downs"] as? Int {
			comment.downs = temp
		}
		if let temp = data["body_html"] as? String {
			comment.bodyHtml = temp
		}
		if let temp = data["subreddit"] as? String {
			comment.subreddit = temp
		}
		if let temp = data["score_hidden"] as? Bool {
			comment.scoreHidden = temp
		}
		if let temp = data["name"] as? String {
			comment.name = temp
		}
		if let temp = data["created"] as? Int {
			comment.created = temp
		}
		if let temp = data["author_flair_text"] as? String {
			comment.authorFlairText = temp
		}
		if let temp = data["created_utc"] as? Int {
			comment.createdUtc = temp
		}
		if let temp = data["distinguished"] as? Bool {
			comment.distinguished = temp
		}
//            if let temp = data["mod_reports"] as? String {
//                comment.modReports = temp
//            }
		if let temp = data["num_reports"] as? Int {
			comment.numReports = temp
		}
		if let temp = data["ups"] as? Int {
			comment.ups = temp
		}
        return comment
    }
	
	/**
	Parse more object.
	
	:param: data Dictionary, must be generated parsing "more".
	:returns: More object as Thing.
	*/
	class func parseDataInThing_more(data:[String:AnyObject]) -> Thing {
		let more = More()
		if let temp = data["id"] as? String {
			more.id = temp
		}
		if let temp = data["name"] as? String {
			more.name = temp
		}
		if let temp = data["parent_id"] as? String {
			more.parentId = temp
		}
		if let temp = data["count"] as? Int {
			more.count = temp
		}
		if let temp = data["children"] as? [String] {
			more.children = temp
		}
		return more
	}
}
