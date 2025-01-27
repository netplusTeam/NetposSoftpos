.class public Lcom/alcineo/administrative/FileId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/administrative/FileId$aoleinc;
    }
.end annotation


# static fields
.field public static final CA_KEY:Lcom/alcineo/administrative/FileId;

.field public static final CONTACT:Lcom/alcineo/administrative/FileId;

.field public static final CPACE:Lcom/alcineo/administrative/FileId;

.field public static final DISCOVER:Lcom/alcineo/administrative/FileId;

.field public static final EFTPOS:Lcom/alcineo/administrative/FileId;

.field public static final ENC_PAY_IPEK:Lcom/alcineo/administrative/FileId;

.field public static final ENC_PAY_KSN:Lcom/alcineo/administrative/FileId;

.field public static final ENC_PIN_IPEK:Lcom/alcineo/administrative/FileId;

.field public static final ENC_PIN_KSN:Lcom/alcineo/administrative/FileId;

.field public static final ENC_SESSION:Lcom/alcineo/administrative/FileId;

.field public static final ENC_SESSION_SIG:Lcom/alcineo/administrative/FileId;

.field public static final EXCEPT:Lcom/alcineo/administrative/FileId;

.field public static final EXPRESS_PAY:Lcom/alcineo/administrative/FileId;

.field public static final FIRMWARE:Lcom/alcineo/administrative/FileId;

.field public static final GIROCARD:Lcom/alcineo/administrative/FileId;

.field public static final HMAC_SIGN_TOKEN:Lcom/alcineo/administrative/FileId;

.field public static final INTERAC:Lcom/alcineo/administrative/FileId;

.field public static final JCB:Lcom/alcineo/administrative/FileId;

.field public static final LANGUAGE:Lcom/alcineo/administrative/FileId;

.field public static final MCL:Lcom/alcineo/administrative/FileId;

.field public static final MSR:Lcom/alcineo/administrative/FileId;

.field public static final PAGOBANCOMAT:Lcom/alcineo/administrative/FileId;

.field public static final PAYWAVE:Lcom/alcineo/administrative/FileId;

.field public static final PURE:Lcom/alcineo/administrative/FileId;

.field public static final REV:Lcom/alcineo/administrative/FileId;

.field public static final RSA_ENC_TERMINAL:Lcom/alcineo/administrative/FileId;

.field public static final RSA_SIGN_CONF_MAIN:Lcom/alcineo/administrative/FileId;

.field public static final RSA_SIGN_MANUF:Lcom/alcineo/administrative/FileId;

.field public static final RSA_SIGN_SERVER:Lcom/alcineo/administrative/FileId;

.field public static final SBL:Lcom/alcineo/administrative/FileId;

.field public static final SERIAL_NUMBER:Lcom/alcineo/administrative/FileId;

.field public static final TOTAL:Lcom/alcineo/administrative/FileId;

.field public static final UNIONPAY:Lcom/alcineo/administrative/FileId;

.field public static final UNKNOWN:Lcom/alcineo/administrative/FileId;

.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alcineo/administrative/FileId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:B

.field private a:Ljava/lang/String;

.field private b:B


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->noaceli:B

    const-string v2, "SBL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->SBL:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->noaceli:B

    const-string v2, "FIRMWARE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->FIRMWARE:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_MCL:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->MCL:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_PAYWAVE:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->PAYWAVE:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_EXPRESS_PAY:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->EXPRESS_PAY:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_JCB:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->JCB:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_DISCOVER:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->DISCOVER:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_UNIONPAY:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->UNIONPAY:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_CONTACT:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->CONTACT:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_MSR:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->MSR:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_INTERAC:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->INTERAC:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_PURE:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->PURE:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_PAGOBANCOMAT:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->PAGOBANCOMAT:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_EFTPOS:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->EFTPOS:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_CPACE:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->CPACE:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_GIROCARD:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->GIROCARD:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->acileon:B

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_TOTAL:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getId()B

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->TOTAL:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->aoleinc:B

    const-string v2, "CA Keys"

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->CA_KEY:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->aoleinc:B

    const-string v2, "Language"

    invoke-direct {v0, v1, v2, v4}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->LANGUAGE:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->aoleinc:B

    const-string v2, "Revocation List"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v2, v5}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->REV:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->aoleinc:B

    const-string v2, "Exception file"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v2, v5}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->EXCEPT:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string/jumbo v2, "rsa_sign_manif.der"

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v5}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->RSA_SIGN_MANUF:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string/jumbo v2, "rsa_enc_terminal.der"

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->RSA_ENC_TERMINAL:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string/jumbo v2, "serial_number.txt"

    invoke-direct {v0, v1, v2, v4}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->SERIAL_NUMBER:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string/jumbo v2, "rsa_sign_server.der"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->RSA_SIGN_SERVER:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string v2, "enc_session.rsa"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->ENC_SESSION:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string v2, "enc_session_sig.sig"

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->ENC_SESSION_SIG:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string v2, "enc_pay_ipek.tr31"

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->ENC_PAY_IPEK:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string v2, "enc_pay_ksn.txt"

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->ENC_PAY_KSN:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string v2, "enc_pin_ipek.tr31"

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->ENC_PIN_IPEK:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string v2, "enc_pin_ksn.txt"

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->ENC_PIN_KSN:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string/jumbo v2, "rsa_sign_conf_main.der"

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->RSA_SIGN_CONF_MAIN:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    sget-byte v1, Lcom/alcineo/administrative/FileId$aoleinc;->enolcai:B

    const-string v2, "hmac_sign_token.tr31"

    const/16 v3, 0x60

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->HMAC_SIGN_TOKEN:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId;

    const/4 v1, -0x1

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2, v1}, Lcom/alcineo/administrative/FileId;-><init>(BLjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/FileId;->UNKNOWN:Lcom/alcineo/administrative/FileId;

    new-instance v0, Lcom/alcineo/administrative/FileId$acileon;

    invoke-direct {v0}, Lcom/alcineo/administrative/FileId$acileon;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/FileId;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/alcineo/administrative/FileId;->a:B

    iput-object p2, p0, Lcom/alcineo/administrative/FileId;->a:Ljava/lang/String;

    iput-byte p3, p0, Lcom/alcineo/administrative/FileId;->b:B

    return-void
.end method

.method public static native getFromId(BB)Lcom/alcineo/administrative/FileId;
.end method


# virtual methods
.method public native getDescription()Ljava/lang/String;
.end method

.method public native getFileValue()[B
.end method

.method public native toString()Ljava/lang/String;
.end method
