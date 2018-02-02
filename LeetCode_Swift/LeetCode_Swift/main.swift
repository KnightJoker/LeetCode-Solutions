//
//  main.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

//String()
let a = MaximumProductOfWordLengths_318()

let r0 = TreeNode(1)
let r1 = TreeNode(2)
let r2 = TreeNode(3)
let r3 = TreeNode(3)
let r4 = TreeNode(1)
let r5 = TreeNode(5)
//let r6 = TreeNode(7)
//let r7 = TreeNode(8)
//let r4 = TreeNode(7)

r0.right = r1
//r0.right = r2
r1.left = r2
//r2.left = r3
//r2.right = r4
//r3.left = r5
//r1.left = r3
//r1.right = r4
//r2.left = r5
//r2.right = r6

let b1 = ListNode(1)
let b2 = ListNode(2)
let b3 = ListNode(3)
let b4 = ListNode(4)
let b5 = ListNode(5)
let b6 = ListNode(6)
let b7 = ListNode(7)
let b8 = ListNode(8)
let b9 = ListNode(9)
let b10 = ListNode(10)

b1.next = b2
b2.next = b3
//b3.next = b4
//b4.next = b5
//b5.next = b6
//b6.next = b7
//b7.next = b8
//b8.next = b9
//b9.next = b10
//b5.next = b6

//var a1 = [1,2,3,4,5,6,7]

//print(Int(UnicodeScalar("A")))

var aaa = ["a","a","b","b","c","c","c"] as [Character]

print(a.maxProduct(["ffdeeabbccfaaeebfccaddcbd","ddfcfbaf","ffcdefefacdfbfdc","fa","fecfde","efcedddafebcbbfaae","efafbf","ecbcbed","aaec","bdedcbfafccaafcfefeffdc","ffdac","cbefdffbbed","dfaefdccaddaacbaca","eda","beedefdddafeedaffcafcabbe","dbabfefaabdecbff","adcccdcefaefdddd","dafcdaebaafdeabcfeacbbbf","eadeebfbcdacaabe","cceaa","dfbdccfecafbdeacbddaedf","addbabd","aaaaacfc","cddaacabfefbfcffecacaa","ebcfeaf","ecffcffbcadeefbabaccafda","bbcbffefaeaccedeb","dcfabedbffbcdceacbcecdedf","afbdebcbccfcfac","eadcabedbcafadbefa","fefeaddbcecaed","fdeaacbcebacebadaeb","ccddfafcbaffbeedfa","edbc","cabefdafe","dadedfbabbfcbfeabcea","feabba","ddbdeeefcbdde","acecdbeceabbdcee","edf","bbdcffdadfabefaddadd","bcdbbedebafcfffeeca","bceebbcffdabbee","edcbfeabfbaeadea","efabbcaafcbca","badcbfcecedbebbdaaaeddf","cbbcfabbfdfebddcfffcbeebacf","fbbfcdbdbeacdeeabb","aaae","adfefeb","efcafdcaedebbc","befcaeadefafdcec","dddb","ecccbbdceeecd","def","debdfddeeaddfdddabccabfe","dbcabccedecadb","bfbde","ddddaeeacdeedcafbfabbc","dbbefcfcbfcfbdccacffdaafd","dcdcebfbefccebbaebafbdaffda","ddeefdefdccedceecfcfbdeeeda","acfcadcafcc","eebeadacbeccedfffc","fcaacdeaaca","cecaebfcfbfeefcdbbfabdbcf","ffcffdd","babcbe","abbfefaedfddeba","fafafceeabcaefaddcccd","bf","bbceecebf","bdfbfbfbeffbdeccb","fcafdded","afafecfcfecfd","dcbebcfbafdaebbaaaae","ecbceeecccfc","eecffefc","dedaffdcacbccadedafefebdb","afabaaacdbefffbe","faf","dfeccfefcbbbec","cabddbdefddeafdb","fcbbabfabccefcebeefaecdb","afbdfd","ffafaadafeaabaadabb","caffbddcafddbfcdfb","dadaacfeaaebeda","faedabdfafcafa","fdcefefc","afbfdadeaeeddceddeebeaaeac","eeddeabaadbacddffedfbccdbed","aecdbfeae","eddaabaabfeacbefbbdecdc","aabcfefba","ebaaedce","faabcafcfebdcccfcd","daefbbeccbebacffc","fecffce","dedfcdebdeaddacaceabdccacec","afeacaaffbebcefbcfeefefa","caeaecbcb","eabadbbde","fcdddeabc","ceaa","babbabeebebcaafacec","bddfeedadefbbfbcecdc","dadfeddfbb","fefcacffdcabbdedafc","eeaafabebbeadf","cbefdcfbdd","bffbdaddfbecfedcabd","fdaa","cbdcddfcaddebbac","dfdfcaccefbbbedecabdaf","aecaae","cebebbafdfe","aebedfafafcbfcacfdace","aaeffe","adbbeaeabe","abbdcdaebeedddfcce","edafcaeecdbec","effabfcccbccefbfcefdc","faecfcddff","ddffcdaefc","ffcbbdffcadfccedceaadbda","bdcccefcbeafcdfa","fcfcfabcb","bfbacfbeeee","becfbfcbbbbacafecdfabafcff","eadfeffe","ef","caebbdedeccfcaaddcabadad","feb","aaaeeaebcbfbbcaccddfccde","bafaadcdbbcffefbcecf","baacc","dffcbdbdaef","aeffdbeebbeeeabcedefadefcea","bcbdffd","baaedcbceafbccebbebbeeeaffc","afbbeafedffcfbafbcb","bcbcbbdfcca","cacaaafdeee","eadcefdddddcd","daaddaaeebeefbcec","cedcfbdcdcadbb","aafcfe","edeaa","bffadeddccaacdcaa","acadbccfefab","dcffaecdaebeecccdacdbde","afdcccefaf","eeacebdcbdbcccb","faaecacaeceebcb","ebcaeffdffacffabbabccefaa","cbcdcadefdabbdcdafba","cdadfacadafeabcecdacbaaccc","dab","ffaeffaccfefacfdafbaccbf","fbcefcdbfabdbdabac","cdfccfdef","cedcfeaedddababdffdbabf","cbdacdffcc","bcfdc","edfcbaecdbabcbcaecdc","edadfcfadefcddbf","dbedfdcdccbddaccaffabbdd","deabbccdaaddf","eeadc","aefccfebeecabdfbda","dccfcdacafebecbefebdfdebf","fabbebdbaff","bfdfbddaeeeaacfeca","bafdfdfae","fecfaadffbcfdabfac","abcaaeefbbefcadeaceadffeb","aaafdeefbfccafeaedaea","ebafdfbcdfdddbbeedbfecbbcfb","edfbeccdcaccf","bbdceffbeabcafae","eeadaaedd","aeecbfecdeeadafded","fbdbdbfadbcab","dcdaadabfbb","fccdcfffefbcdb","dfbfcae","beedccaafbadcacadfd","bcfbdbfdcbfd","aafedacbabfeddedaadcb","acfdbfaccbcbac","bfeaaaafcaeddaffccebacbbff","fbdcacacbabddebdeecccba","cdededefebaedb","abeadffbacee","aadabfddcaeadefdfefba","edffcdd","acceeaeacacaa","cbeafbafccdbbdfbfccbe","eeebbfceacbfdddfebf","cd","bebfbfcc","dccfffcedaafbcbaccec","facefddfaafaafddfcbdaf","caedfcfbbede","fdfcdaebefdaacbf","deccabcfeabfebccfaafbe","ea","dbbabdcf","adeaaaefcbffdccbf","deacacddcbfeadcefdccbd","ccebddbebacbecafcdaceeadbd","decafccaaf","cecbabcbffbfac","effeeafbdbdfdcaaedbfadbaaba","fcffccabafdafbdbbf","fcaea","eab","cbcbcdbfdfcfeaacfd","bebcdbbaeaccaebfaafac","fdfdcebbadbba","bb","ababebaadadebc","aeacecacffedfceeacdde","feacdbcefbeaeddcdccdebee","fafadacdedeebdafedccc","dbffaedaebeaedbccfc","ebdaabeefbaaa","bacaaeebfaaeaabccbbfa","cebacdbdaeeeddaacdefdbdc","cfbbdf","ffdbcdcfcdbfcebaaecbdfdbac","ecdacadfdcbcdcdedbfaf","cffcaeccac","acceacbdfbedfddefeaedf","fdbfdebcbfbeddefaaedfabcea","ddaafbcfdadfbeacbcf","dafa","efbefeebddbaefafbed","dffeff","ffcedbb","fefbeb","aedffaebe","dfdcfeeedaaecceebbabfcafeab","bddcfedacfda","dafdfeeebbdbbefbcceddbdfcdc","dbdaaeddbafaeeeabdcbeafbfb","dcbdfeabadcffebb","cecbaccecfcbe","fddfedbdadacdaadbdfeba","bddebcfdbaeec","cfaaabc","eddbcbccab","fafffecdcacedacacbcefddcfc","fccbabfdeefceb","cacddeceafeacdffffdccfddac","dcdfbdacdbbadebbcdc","dabde","dbacaeca","beefdbcc","cedbbebbfabdbdbbba","badedaadbbfacfafcedec","fcdcabddcdaceddeaababebc","efafbcfbeafaecee","addcbafad","efbdacbbf","bbabbbcfaaffdbfcf","abecfeaadaedff","fe","adfdfffdedbabfeffbffcbdfdbe","edccafdadecbabdcfcfadd","ddaddcedbbadccbfaebf","fdcaaddaf","fcdcbddebbecdbfce","dfaecbbfccbbfddbfbfadfecbf","defcdefbaffdcfdddaebed","cadecbaecacefabcdea","bcbdaebbdebbcdb","dddd","bcfecafefcbfacdecfc","fbefeefa","ffcacbd","ffafebf","dbfaddfadcfcdeddcebe","babbcefcb","aebfcddcdefadb","baecddabbdecefdefdfc","bebe","ebbbfbcabfccbcacaccbcab","ecffedefbbdccfdafbaddf","bdbbbecfafb","bfaeedcadcbdbddcbcaaeffbccd","dbdcdffbb","caee","ccfcabecdaee","abbecaeefc","cdbfbcfbfeddcbcbadbceabede","adddfddcebdcebdb","cbfff","cafafbcabbbcedd","fedcebffdadfbcedbd","fedbedcdbabbbcdadd","fdfeddeaefadcffadadaf","abaebbbaebebfa","dcdbfdedad","afdaebcdccfaadefdbeaddcabed","bccbceffcdfefbcbd","efeeecefdcbdabcb","cdc","cddadccadefbaccdcbfffedaa","dacbcddabeddbbcaebdeca","eccfaddaa","daabba","eceafbcadfdebfceda","abddbaebeccacfdefbacdc","cdcfdaeccdcfaadfdfdecba","eacaffbdaabe","acdbecfebbdbbebaaab","faebacdafcecafbecca","ccedcefaabfaa","ecaebdb","deeaeafbddfdafcfcd","ef","fceab","cdbceecbbfbebadcddbcbfb","cccafeecedbddfadedddadf","abfbccafbcbddfcdaaeefffa","dcdbdcdfbaffdcaafebddadf","bdaaecccbdeccabbdaafcc","addfeeedbeacffdcbfaadbdb","effcbbeaaebeefbaeec","adfcaa","ebceffbaefbadfbfcefa","aaefbaedddcdbbfabb","aeadcfeaddabbffefdcadc","ddbcfede","cfeffaecb","cddedebabefe","ecdb","aafddabfdadacafdfbbaba","dfcadfaeddafafc","daecbfbfaecfafadeacdedafdd","baef","afdfefdcacceaeebbeebd","faa","da","dbddbfbdcaeececfcccdfa","acff","fdfafca","ebbdebfffdcfdecffcbe","bacbdfe","afebcaceebaf","deafafaafdaadddaacaacccb","acdbaefabe","aaeafdbbabbcdceda","adfbafbdbcafbcb","aabccc","ddcadc","aedcbdfcccdccabbabbaadf","dbcfcdacad","aacaceadafbdafaccfaaceb","bbcdebdea","bfaeedbacbabedefbfcadedcecd","dccf","caafbcabafffec","cfcbebacbdcbabafdeeebcffda","dbfcffcbadcfcacdcdbccfdfa","bdc","dadcfeaeaeeebcbd","bffcbfdebccedb","cccdceebfcfdacacdca","aceddacdbfd","aefdafcfccfbc","cdba","deaaeacabdcabffecbdacedeae","ccdbeaefbcad","ebfbaddaeeceedeacafd","adabdefefaadaacabdcebfd","cdddccadacbeeebceecb","ededea","cdfe","afeafcefc","ebddbcfebfefceffcc","edcab","abacacdbfcfcfdaaceeca","dbaffc","dabeddddbbbaaebb","adcbecfdbbfe","baacbbbfddacbabdaefecfc","daadbafbaebe","bedbbaaedcdafcfaabbbee","dacbea","ecbffbfb","cdcbadbfacb","fbceeccaffadeecddbdbee","acafbedfccdfb","dabdbfdeeeabdaafbafbecc","bcfddddcbbbaebbaee","bcaecbeafdeafdeadfbccf","bebafeaddfedfcdbabcbeba","fabeaafacdfcfcccacdfbadad","eebdefbdacfbabcfeeffcfeeffa","feeefdbaddccfdbcfc","dafbbaccbefabfefdea","fefdfebaaefbffcd","eabcafbceebadaafe","adbedea","cdacfcccaeaadcbcefcf","cfeacbdcceabaeedded","bc","ccbcdbaca","abffcac","eefadddfcebeaffdadcedbcbede","aebacddeaedefdebeac","efcacefcf","aaebdbffd","fffbdefadfabdeafbbabfbaabf","dfddceaebfc","ecbcabf","deacadfbcffdcfaecacabcecf","ccaabeaacba","eaaabf","eaabdfeaadbedbdbbbeec","eddeceddfaeecbcbcefaaec","eafeacecddafaeefedabdddbfea","eda","dbeeeeabbbfbdceed","eab","caddafbbe","efcafcfecbbfdebeeedde","cbeeffadfbbfa","bffadcbccf","dfacafacceaabebbaeb","bbadbceffffbafafdbaacebce","daedaaacbfbdbbeaeeddbedbdc","fcbbd","bbeffdddfee","acaeacf","aaabdedabcadafebcdeac","ddbeabddbaeefadfcafbe","bcabcbccdcefdacccfdbaebee","dfebcefc","eeeeecfbccbf","bde","bdedfebfccbedfbbeadaffdbaa","ebacbaaaafbcdcbbdbcdaec","cbeede","fda","cddfcf","ffcaefdd","aadbaaacbabb","aefacadaaccbdebbef","beedaaeccddfbdadbfafdbedaf","dcfafcfdbfceefff","dbcdf","edfecd","bcdac","fceda","edefbeabafcacc","bcafeccb","dccffb","afdd","ccbaecfe","ebddebaaacfe","cfffacdebdb","dedbabcfb","feefaadabd","cbadfadabbecdda","dfe","beabcbeefcdbceaaececaccbed","eae","afaeaffbaecfcbfbdb","bccbbddfbeea","adccfeddaebddbcbedaddbdbccb","ddabaeaacbcddabbaaaefcc","cbe","dcfbffbcebeedad","adfadccabfabfadc","fdfbaaaabccbffcfaebbcfcc","efbcac","aafdbbfbdabaebaa","eefccdaabebfbaceeadebcacb","bfeeecafefbdeeaadfbdfae","fafbefbceacaeecdcddafbb","dd","bcbbaabdfdaeb","ceedacfaddf","cfabefcfeaeaecbeeabdfbcadb","bfcfcafebcffbcf","fbcdaddcacecbdbbdefdbadfaad","eafdecedbafaadafbdf","bbedffcedcaffdcbfdeeabdbf","dcc","eeeeaffebbef","bfaddbbcbefbcaaebfd","bdd","cceecfbab","ebacdfebafcf","cab","beeedffa"]))
















