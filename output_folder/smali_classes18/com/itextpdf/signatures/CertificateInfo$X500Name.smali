.class public Lcom/itextpdf/signatures/CertificateInfo$X500Name;
.super Ljava/lang/Object;
.source "CertificateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/CertificateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X500Name"
.end annotation


# static fields
.field public static final C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DefaultSymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GENERATION:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GIVENNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final INITIALS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ST:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SURNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final T:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field public values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 79
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.5.4.10"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->O:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "2.5.4.11"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->OU:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.5.4.12"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->T:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 99
    new-instance v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "2.5.4.3"

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->CN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    new-instance v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "2.5.4.5"

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->SN:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    new-instance v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "2.5.4.7"

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->L:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 114
    new-instance v7, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "2.5.4.8"

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->ST:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    new-instance v8, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "2.5.4.4"

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->SURNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 124
    new-instance v9, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "2.5.4.42"

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->GIVENNAME:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 129
    new-instance v10, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "2.5.4.43"

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->INITIALS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 134
    new-instance v11, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "2.5.4.44"

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->GENERATION:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 139
    new-instance v12, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "2.5.4.45"

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v12, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->UNIQUE_IDENTIFIER:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 146
    new-instance v12, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "1.2.840.113549.1.9.1"

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v12, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 151
    sput-object v12, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->E:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 156
    new-instance v13, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "0.9.2342.19200300.100.1.25"

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v13, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->DC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 161
    new-instance v14, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "0.9.2342.19200300.100.1.1"

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->UID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    sput-object v15, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    .line 169
    move-object/from16 v16, v11

    const-string v11, "C"

    invoke-interface {v15, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "O"

    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "T"

    invoke-interface {v15, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "OU"

    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "CN"

    invoke-interface {v15, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "L"

    invoke-interface {v15, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "ST"

    invoke-interface {v15, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "SN"

    invoke-interface {v15, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "E"

    invoke-interface {v15, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "DC"

    invoke-interface {v15, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "UID"

    invoke-interface {v15, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "SURNAME"

    invoke-interface {v15, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "GIVENNAME"

    invoke-interface {v15, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "INITIALS"

    invoke-interface {v15, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "GENERATION"

    move-object/from16 v1, v16

    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "dirName"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    .line 224
    new-instance v0, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;

    invoke-direct {v0, p1}, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "nTok":Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {v0}, Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "token":Ljava/lang/String;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 230
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 234
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "id":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 237
    .local v5, "vs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 239
    iget-object v6, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "vs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 231
    .restart local v1    # "token":Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 244
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    .line 198
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 200
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Set;

    .line 203
    .local v1, "set":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 204
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 205
    .local v3, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    sget-object v4, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->DefaultSymbols:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 206
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 207
    goto :goto_2

    .line 208
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 209
    .local v5, "vs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 210
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 211
    iget-object v6, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v3    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "vs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    .end local v1    # "set":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v2    # "i":I
    :cond_2
    goto :goto_0

    .line 216
    :cond_3
    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 254
    .local v0, "vs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getFieldArray(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->values:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
