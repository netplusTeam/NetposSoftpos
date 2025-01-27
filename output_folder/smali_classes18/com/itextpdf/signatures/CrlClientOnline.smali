.class public Lcom/itextpdf/signatures/CrlClientOnline;
.super Ljava/lang/Object;
.source "CrlClientOnline.java"

# interfaces
.implements Lcom/itextpdf/signatures/ICrlClient;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/itextpdf/signatures/CrlClientOnline;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CrlClientOnline;->urls:Ljava/util/List;

    .line 83
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "crls"    # [Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CrlClientOnline;->urls:Ljava/util/List;

    .line 91
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 92
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/itextpdf/signatures/CrlClientOnline;->addUrl(Ljava/lang/String;)V

    .line 91
    .end local v2    # "url":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/net/URL;)V
    .locals 3
    .param p1, "crls"    # [Ljava/net/URL;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CrlClientOnline;->urls:Ljava/util/List;

    .line 102
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 103
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {p0, v2}, Lcom/itextpdf/signatures/CrlClientOnline;->addUrl(Ljava/net/URL;)V

    .line 102
    .end local v2    # "url":Ljava/net/URL;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/Certificate;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/CrlClientOnline;->urls:Ljava/util/List;

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 114
    aget-object v1, p1, v0

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 115
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    sget-object v2, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 116
    const/4 v2, 0x0

    .line 118
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/itextpdf/signatures/CertificateUtil;->getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 119
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p0, v2}, Lcom/itextpdf/signatures/CrlClientOnline;->addUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    goto :goto_1

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/security/cert/CertificateParsingException;
    sget-object v4, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Skipped CRL url (certificate could not be parsed)"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 113
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "e":Ljava/security/cert/CertificateParsingException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected addUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 185
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/signatures/CrlClientOnline;->addUrl(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped CRL url (malformed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected addUrl(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .line 197
    iget-object v0, p0, Lcom/itextpdf/signatures/CrlClientOnline;->urls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped CRL url (duplicate): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 199
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/CrlClientOnline;->urls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added CRL url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;
    .locals 10
    .param p1, "checkCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "[B>;"
        }
    .end annotation

    .line 139
    if-nez p1, :cond_0

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/signatures/CrlClientOnline;->urls:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    .local v0, "urllist":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 143
    sget-object v1, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for CRL for certificate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 145
    if-nez p2, :cond_1

    .line 146
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/signatures/CertificateUtil;->getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    move-object p2, v2

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_1

    .line 147
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 149
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found CRL url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 153
    goto :goto_2

    .line 148
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Passed url can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "urllist":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    .end local p1    # "checkCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "url":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .restart local v0    # "urllist":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local p1    # "checkCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "url":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped CRL url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "ar":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 158
    .local v3, "urlt":Ljava/net/URL;
    :try_start_1
    sget-object v4, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking CRL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 159
    invoke-static {v3}, Lcom/itextpdf/signatures/SignUtils;->getHttpResponse(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v4

    .line 160
    .local v4, "inp":Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 161
    .local v5, "buf":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v6, "bout":Ljava/io/ByteArrayOutputStream;
    :goto_4
    array-length v7, v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 164
    .local v7, "n":I
    if-gtz v7, :cond_4

    .line 165
    nop

    .line 168
    .end local v7    # "n":I
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 169
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v7, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added CRL found at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 173
    .end local v4    # "inp":Ljava/io/InputStream;
    .end local v5    # "buf":[B
    .end local v6    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 166
    .restart local v4    # "inp":Ljava/io/InputStream;
    .restart local v5    # "buf":[B
    .restart local v6    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "n":I
    :cond_4
    invoke-virtual {v6, v5, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .end local v7    # "n":I
    goto :goto_4

    .line 171
    .end local v4    # "inp":Ljava/io/InputStream;
    .end local v5    # "buf":[B
    .end local v6    # "bout":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v4

    .line 172
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/itextpdf/signatures/CrlClientOnline;->LOGGER:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped CRL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 174
    .end local v3    # "urlt":Ljava/net/URL;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5
    goto/16 :goto_3

    .line 175
    :cond_5
    return-object v1
.end method

.method public getUrlsSize()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/itextpdf/signatures/CrlClientOnline;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
