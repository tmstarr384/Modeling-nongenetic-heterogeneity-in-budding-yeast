<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.35 (Build 258) (http://www.copasi.org) at 2022-05-04T20:25:16Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="35" versionDevel="258" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_6">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Competitive activation via PKA (irr)" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (V * Substrate * Activator) / (Km * (1 + Substrate/Km + Competitor1/Kc1 + Competitor2/Kc2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="Substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="Activator" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="Km" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="Competitor1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_265" name="Kc1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="Competitor2" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="Kc2" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Simple Catalytic Activation (irr)" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        V * Substrate * Activator / (Km + Substrate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="Activator" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_272" name="Km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="cAMP-PKA Pathway" simulationType="time" timeUnit="min" volumeUnit="fl" areaUnit="fm²" lengthUnit="fm" quantityUnit="fmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-06-18T02:13:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This model attempts to reconstitute cAMP-PKA pathway dynamics and behaviors. It is based off of the full model described by Gonzales et al. (http://www.biomedcentral.com/1752-0509/7/40).

Time course simulations of cases 1-5 can be run immediately. 

To experiment with changes in parameters:
1. Apply the "Pre-Init" parameter set to obtain initial values before glucose reintroduction.
2. Run the Steady-State task and update the model with those concentrations.
3. Set "Glu" to 1 in the Parameter Overview.
4. Run the Time Course task.

To iteratively adjust model values, use the Parameter Scan task.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Gpa2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Cdc25*" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Ira*" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Ras" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Cyr1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="cAMP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Pde1*" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Pde2*" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="PKA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Glu" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Stress" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Ira" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Pde1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Pde2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Ras*" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Bcy1::PKA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="cAMP::Bcy1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Gamma_z" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          fmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Gamma_p1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          fmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Gamma_p2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          fmol
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Gpa2 production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4950" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4950"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Gpa2 degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4949" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4949"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Cdc25* production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4948" name="v" value="168"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4948"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Cdc25* degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4947" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4947"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Ira activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4946" name="V" value="2.27e+06"/>
          <Constant key="Parameter_4945" name="Km" value="1e+08"/>
          <Constant key="Parameter_4944" name="Kc1" value="1.5"/>
          <Constant key="Parameter_4943" name="Kc2" value="1.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4946"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Ira* degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4942" name="k1" value="0.86"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4942"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Ras activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4941" name="Km" value="0.42"/>
          <Constant key="Parameter_4940" name="V" value="240"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4940"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_4941"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Ras* deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4939" name="V" value="120"/>
          <Constant key="Parameter_4938" name="Km" value="0.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4939"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_4938"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Cyr1 basal production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4937" name="v" value="1.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4937"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Cyr1 enhanced production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4936" name="k1" value="0.027"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4936"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Cyr1 degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4935" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4935"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="cAMP production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4934" name="k1" value="23.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4934"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="cAMP degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4931" name="k1" value="0.34"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4931"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="cAMP deactivation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4930" name="V" value="56.8"/>
          <Constant key="Parameter_4933" name="Km" value="840"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4930"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_4933"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="cAMP deactivation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4932" name="V" value="14.7"/>
          <Constant key="Parameter_4929" name="Km" value="420"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4932"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_4929"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Pde1 activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4928" name="V" value="2"/>
          <Constant key="Parameter_4927" name="Km" value="1.5"/>
          <Constant key="Parameter_4926" name="Kc1" value="1e+08"/>
          <Constant key="Parameter_4925" name="Kc2" value="1.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4928"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Pde1* degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4924" name="k1" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4924"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Pde2 activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4923" name="V" value="0.363"/>
          <Constant key="Parameter_4922" name="Km" value="1.1"/>
          <Constant key="Parameter_4921" name="Kc1" value="1e+08"/>
          <Constant key="Parameter_4920" name="Kc2" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4923"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Pde2* degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4919" name="k1" value="0.01175"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4919"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="PKA activation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="4"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4918" name="k1" value="2.85e-09"/>
          <Constant key="Parameter_4917" name="k2" value="0.0113"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4918"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4917"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]" value="1000000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Gpa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cdc25*]" value="1.0117196639760008e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira*]" value="12645985922934.637" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras]" value="15802149138.357058" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cyr1]" value="752767607124999.62" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP]" value="9148680278225940" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1*]" value="5701693075567578" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2*]" value="17347251189302958" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[PKA]" value="1281834627883110.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Glu]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Stress]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira]" value="37926841413177080" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1]" value="84630419779432448" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2]" value="48896298237697056" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras*]" value="6.3232477418285146e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Bcy1::PKA]" value="2.1615615353805859e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP::Bcy1]" value="640917313941554.5" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production],ParameterGroup=Parameters,Parameter=v" value="168" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=V" value="2270000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Km" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.85999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=V" value="240" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=V" value="120" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production],ParameterGroup=Parameters,Parameter=v" value="1.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production],ParameterGroup=Parameters,Parameter=k1" value="0.027" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production],ParameterGroup=Parameters,Parameter=k1" value="23.600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=V" value="56.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=Km" value="840" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=V" value="14.699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=Km" value="420" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Km" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=V" value="0.36299999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Km" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.01175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k1" value="2.8499999999999999e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k2" value="0.011299999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="Pre-Init">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Comment>
          Set of parameters prior to glucose introduction. Some change depending on the case.
        </Comment>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]" value="1000000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Gpa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cdc25*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras]" value="6.3232478998500006e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cyr1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Glu]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Stress]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira]" value="37939487399100000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1]" value="90332112855000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2]" value="66243549427000008" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Bcy1::PKA]" value="2.1679707085200003e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP::Bcy1]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z]" value="100000000" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production],ParameterGroup=Parameters,Parameter=v" value="168" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=V" value="2270000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Km" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.85999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=V" value="240" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=V" value="120" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production],ParameterGroup=Parameters,Parameter=v" value="1.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production],ParameterGroup=Parameters,Parameter=k1" value="0.027" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production],ParameterGroup=Parameters,Parameter=k1" value="23.600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=V" value="56.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=Km" value="840" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=V" value="14.699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=Km" value="420" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Km" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=V" value="0.36299999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Km" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.01175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k1" value="2.8499999999999999e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k2" value="0.011299999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="Case 2: Pde1 knockout">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]" value="1000000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Gpa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cdc25*]" value="1.0117196639760005e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira*]" value="12597865236828924" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras]" value="16785688410253.24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cyr1]" value="752767607124999.88" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP]" value="4443538771903978" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1*]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2*]" value="64045908151033968" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[PKA]" value="489693544894881.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Glu]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Stress]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira]" value="25341622162271076" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2]" value="2197641275966080.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras*]" value="6.323080042965897e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Bcy1::PKA]" value="2.1655222407955267e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP::Bcy1]" value="244846772447440.72" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z]" value="100000000" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production],ParameterGroup=Parameters,Parameter=v" value="168" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=V" value="2270000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Km" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.85999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=V" value="240" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=V" value="120" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production],ParameterGroup=Parameters,Parameter=v" value="1.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production],ParameterGroup=Parameters,Parameter=k1" value="0.027" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production],ParameterGroup=Parameters,Parameter=k1" value="23.600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=V" value="56.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=Km" value="840" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=V" value="14.699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=Km" value="420" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Km" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=V" value="0.36299999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Km" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.01175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k1" value="2.8499999999999999e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k2" value="0.011299999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="Case 1: Wild-type">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]" value="1000000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Gpa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cdc25*]" value="1.0117196639760003e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira*]" value="12645985922934.639" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras]" value="15802149138.357061" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cyr1]" value="752767607124999.88" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP]" value="9148680278225940" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1*]" value="5701693075567578" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2*]" value="17347251189302960" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[PKA]" value="1281834627883110.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Glu]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Stress]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira]" value="37926841413177080" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1]" value="84630419779432448" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2]" value="48896298237697056" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras*]" value="6.3232477418285107e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Bcy1::PKA]" value="2.1615615353805856e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP::Bcy1]" value="640917313941554.75" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production],ParameterGroup=Parameters,Parameter=v" value="168" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=V" value="2270000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Km" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.85999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=V" value="240" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=V" value="120" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production],ParameterGroup=Parameters,Parameter=v" value="1.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production],ParameterGroup=Parameters,Parameter=k1" value="0.027" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production],ParameterGroup=Parameters,Parameter=k1" value="23.600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=V" value="56.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=Km" value="840" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=V" value="14.699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=Km" value="420" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Km" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=V" value="0.36299999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Km" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.01175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k1" value="2.8499999999999999e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k2" value="0.011299999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_6" name="Case 3: Pde2 knockout">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]" value="1000000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Gpa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cdc25*]" value="1.0117196639760005e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira*]" value="2730377472764667" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras]" value="3458253321230.312" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cyr1]" value="752767607124999.88" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP]" value="10537271522937332" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1*]" value="12236704385328864" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2*]" value="-6.850600320832522e-12" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[PKA]" value="1547281661812718.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Glu]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Stress]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira]" value="35209109926335336" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1]" value="78095408469671152" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2]" value="6.850600320832522e-12" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras*]" value="6.3232133173167898e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Bcy1::PKA]" value="2.1602343002109376e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP::Bcy1]" value="773640830906359.25" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z]" value="100000000" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production],ParameterGroup=Parameters,Parameter=v" value="168" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=V" value="2270000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Km" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.85999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=V" value="240" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=V" value="120" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production],ParameterGroup=Parameters,Parameter=v" value="1.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production],ParameterGroup=Parameters,Parameter=k1" value="0.027" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production],ParameterGroup=Parameters,Parameter=k1" value="23.600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=V" value="56.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=Km" value="840" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=V" value="14.699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=Km" value="420" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Km" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=V" value="0.36299999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Km" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.01175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k1" value="2.8499999999999999e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k2" value="0.011299999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_7" name="Case 4: Pde1 phosphorylation mutant">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]" value="1000000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Gpa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cdc25*]" value="1.0117196639760005e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira*]" value="930526722127388.38" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras]" value="1168062791362.939" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cyr1]" value="752767607124999.88" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP]" value="6322631582531139" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1*]" value="4367309367019447" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2*]" value="39467532389121976" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[PKA]" value="783522255934455" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Glu]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Stress]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira]" value="37008960676972608" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1]" value="85964803487980544" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2]" value="26776017037878044" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras*]" value="6.3232362192220877e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Bcy1::PKA]" value="2.1640530972403283e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP::Bcy1]" value="391761127967227.5" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z]" value="100000000" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production],ParameterGroup=Parameters,Parameter=v" value="168" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=V" value="2270000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Km" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.85999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=V" value="240" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=V" value="120" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production],ParameterGroup=Parameters,Parameter=v" value="1.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production],ParameterGroup=Parameters,Parameter=k1" value="0.027" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production],ParameterGroup=Parameters,Parameter=k1" value="23.600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=V" value="30.699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=Km" value="840" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=V" value="14.699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=Km" value="420" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=V" value="0.92500000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Km" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=V" value="0.36299999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Km" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.01175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k1" value="2.8499999999999999e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k2" value="0.011299999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_8" name="Case 5: Double PDE knockout">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell]" value="1000000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Gpa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cdc25*]" value="1.0117196639760003e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira*]" value="1.3748565348636941e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras]" value="6.32281161593232e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cyr1]" value="752767607124999.88" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP]" value="52250928023974144" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1*]" value="-1.2398401083956409e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2*]" value="6.3295705869824409e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[PKA]" value="12967191031689644" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Glu]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Stress]" value="602214085700000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira]" value="2.4190922050463043e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1]" value="1.2398401083956407e-07" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2]" value="-6.3295705869824395e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras*]" value="43628391768191.992" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Bcy1::PKA]" value="2.1031347533615536e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP::Bcy1]" value="6483595515844819" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 production],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Gpa2 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* production],ParameterGroup=Parameters,Parameter=v" value="168" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cdc25* degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=V" value="2270000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Km" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc1" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ira* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.85999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras activation],ParameterGroup=Parameters,Parameter=V" value="240" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=V" value="120" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Ras* deactivation],ParameterGroup=Parameters,Parameter=Km" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 basal production],ParameterGroup=Parameters,Parameter=v" value="1.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 enhanced production],ParameterGroup=Parameters,Parameter=k1" value="0.027" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Cyr1 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP production],ParameterGroup=Parameters,Parameter=k1" value="23.600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP degradation],ParameterGroup=Parameters,Parameter=k1" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=V" value="56.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 1],ParameterGroup=Parameters,Parameter=Km" value="840" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=V" value="14.699999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[cAMP deactivation 2],ParameterGroup=Parameters,Parameter=Km" value="420" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Km" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde1* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=V" value="0.36299999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Km" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2 activation],ParameterGroup=Parameters,Parameter=Kc2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=cAMP-PKA Pathway,Vector=Values[Gamma_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[Pde2* degradation],ParameterGroup=Parameters,Parameter=k1" value="0.01175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k1" value="2.8499999999999999e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Reactions[PKA activation],ParameterGroup=Parameters,Parameter=k2" value="0.011299999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 9148680278225940 752767607124999.62 12645985922934.637 15802149138.357058 1.0117196639760008e+17 0 5701693075567578 17347251189302958 1281834627883110.5 84630419779432448 48896298237697056 37926841413177080 2.1615615353805859e+17 6.3232477418285146e+17 640917313941554.5 602214085700000 602214085700000 1000000 100000000 1.5 1.1000000000000001 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="500"/>
        <Parameter name="StepSize" type="float" value="0.02"/>
        <Parameter name="Duration" type="float" value="10"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Time vs. [cAMP]" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[cAMP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Time vs. All Concentrations" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Gpa2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Gpa2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdc25*]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cdc25*],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ira*]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira*],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ras]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cyr1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Cyr1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cAMP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pde1*]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1*],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pde2*]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2*],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PKA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[PKA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ira]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ira],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pde1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pde2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Pde2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ras*]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Ras*],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Bcy1::PKA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[Bcy1::PKA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cAMP::Bcy1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=cAMP-PKA Pathway,Vector=Compartments[cell],Vector=Metabolites[cAMP::Bcy1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
