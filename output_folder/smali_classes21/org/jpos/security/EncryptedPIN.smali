.class public Lorg/jpos/security/EncryptedPIN;
.super Ljava/lang/Object;
.source "EncryptedPIN.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jpos/util/Loggeable;


# static fields
.field private static final serialVersionUID:J = -0x7e87482a45bc7aa3L


# instance fields
.field accountNumber:Ljava/lang/String;

.field pinBlock:[B

.field pinBlockFormat:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;)V
    .locals 1
    .param p1, "pinBlockHexString"    # Ljava/lang/String;
    .param p2, "pinBlockFormat"    # B
    .param p3, "accountNumber"    # Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;Z)V
    .locals 1
    .param p1, "pinBlockHexString"    # Ljava/lang/String;
    .param p2, "pinBlockFormat"    # B
    .param p3, "accountNumber"    # Ljava/lang/String;
    .param p4, "extract"    # Z

    .line 125
    invoke-static {p1}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/jpos/security/EncryptedPIN;-><init>([BBLjava/lang/String;Z)V

    .line 126
    return-void
.end method

.method public constructor <init>([BBLjava/lang/String;)V
    .locals 1
    .param p1, "pinBlock"    # [B
    .param p2, "pinBlockFormat"    # B
    .param p3, "accountNumber"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lorg/jpos/security/EncryptedPIN;->setPINBlock([B)V

    .line 92
    invoke-virtual {p0, p2}, Lorg/jpos/security/EncryptedPIN;->setPINBlockFormat(B)V

    .line 93
    invoke-static {p3}, Lorg/jpos/security/EncryptedPIN;->extractAccountNumberPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/security/EncryptedPIN;->setAccountNumber(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>([BBLjava/lang/String;Z)V
    .locals 1
    .param p1, "pinBlock"    # [B
    .param p2, "pinBlockFormat"    # B
    .param p3, "accountNumber"    # Ljava/lang/String;
    .param p4, "extract"    # Z

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lorg/jpos/security/EncryptedPIN;->setPINBlock([B)V

    .line 104
    invoke-virtual {p0, p2}, Lorg/jpos/security/EncryptedPIN;->setPINBlockFormat(B)V

    .line 105
    if-eqz p4, :cond_0

    invoke-static {p3}, Lorg/jpos/security/EncryptedPIN;->extractAccountNumberPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jpos/security/EncryptedPIN;->setAccountNumber(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static extractAccountNumberPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "accountNumber"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "accountNumberPart":Ljava/lang/String;
    const/16 v1, 0xd

    :try_start_0
    invoke-static {p0, v1}, Lorg/jpos/iso/ISOUtil;->takeLastN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 209
    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->takeFirstN(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 213
    :goto_0
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<encrypted-pin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " format=\"0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 138
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<pin-block>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/EncryptedPIN;->getPINBlock()[B

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</pin-block>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<account-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</account-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</encrypted-pin>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/jpos/security/EncryptedPIN;->accountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPINBlock()[B
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/jpos/security/EncryptedPIN;->pinBlock:[B

    return-object v0
.end method

.method public getPINBlockFormat()B
    .locals 1

    .line 173
    iget-byte v0, p0, Lorg/jpos/security/EncryptedPIN;->pinBlockFormat:B

    return v0
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "extractedAccountNumber"    # Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 186
    iput-object p1, p0, Lorg/jpos/security/EncryptedPIN;->accountNumber:Ljava/lang/String;

    .line 187
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracted account number length should be 12, got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-static {p1}, Lorg/jpos/iso/ISOUtil;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPINBlock([B)V
    .locals 0
    .param p1, "pinBlock"    # [B

    .line 149
    iput-object p1, p0, Lorg/jpos/security/EncryptedPIN;->pinBlock:[B

    .line 150
    return-void
.end method

.method public setPINBlockFormat(B)V
    .locals 0
    .param p1, "pinBlockFormat"    # B

    .line 165
    iput-byte p1, p0, Lorg/jpos/security/EncryptedPIN;->pinBlockFormat:B

    .line 166
    return-void
.end method
