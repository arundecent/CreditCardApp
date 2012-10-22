package org.java.creditcard;

import java.util.Collection;

import org.drools.KnowledgeBase;
import org.drools.io.*;
import org.drools.builder.KnowledgeBuilder;
import org.drools.builder.ResourceType;
//import org.drools.builder.*;
import org.drools.builder.KnowledgeBuilderFactory;
//import org.drools.command.runtime.*;
import org.drools.definition.*;
import org.drools.runtime.*;
import org.drools.*;
import org.groovy.creditcard.Customer;
import org.drools.compiler.*;


public class DroolsClass {
	
	void droolsInit(Customer c1){
	 KnowledgeBuilder kbuilder = KnowledgeBuilderFactory.newKnowledgeBuilder();
		kbuilder.add(ResourceFactory.newClassPathResource("CreditCardRules.drl"),ResourceType.DRL);
		if (kbuilder.hasErrors()) {
			
				System.out.println(kbuilder.getErrors().toString());
				throw new RuntimeException("Unable to compile \"CreditCardRules.drl\".");
			
			}
		 Collection<KnowledgePackage> pkgs = kbuilder.getKnowledgePackages();
		 KnowledgeBase kbase = KnowledgeBaseFactory.newKnowledgeBase();
		kbase.addKnowledgePackages(pkgs);
		 StatefulKnowledgeSession ksession = kbase.newStatefulKnowledgeSession();
		 ksession.insert(c1);
			ksession.fireAllRules();
		System.out.println("Comments : "+c1.getComments());
		
	}
}
