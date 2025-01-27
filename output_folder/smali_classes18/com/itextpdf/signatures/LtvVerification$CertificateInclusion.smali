.class public final enum Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;
.super Ljava/lang/Enum;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/LtvVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertificateInclusion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

.field public static final enum NO:Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

.field public static final enum YES:Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 147
    new-instance v0, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;->YES:Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    .line 151
    new-instance v1, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    const-string v3, "NO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;->NO:Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    .line 143
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;->$VALUES:[Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 143
    const-class v0, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;
    .locals 1

    .line 143
    sget-object v0, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;->$VALUES:[Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    invoke-virtual {v0}, [Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    return-object v0
.end method
