package com.odp_bni_330.web.repository;

import com.odp_bni_330.web.model.Member;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberRepository extends JpaRepository<Member, Long> {
}
