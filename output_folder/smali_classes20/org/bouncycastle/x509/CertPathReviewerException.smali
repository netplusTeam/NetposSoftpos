.class public Lorg/bouncycastle/x509/CertPathReviewerException;
.super Lorg/bouncycastle/i18n/LocalizedException;
.source "CertPathReviewerException.java"


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 6
    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 8
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    .line 2
    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 4
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    .line 10
    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 12
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    if-eqz p3, :cond_1

    if-eq p4, p1, :cond_1

    if-lt p4, p1, :cond_0

    .line 35
    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p4, p1, :cond_0

    .line 39
    iput-object p3, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    .line 40
    iput p4, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 44
    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    if-eqz p2, :cond_1

    if-eq p3, p1, :cond_1

    if-lt p3, p1, :cond_0

    .line 87
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 91
    iput-object p2, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    .line 92
    iput p3, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return v0
.end method
