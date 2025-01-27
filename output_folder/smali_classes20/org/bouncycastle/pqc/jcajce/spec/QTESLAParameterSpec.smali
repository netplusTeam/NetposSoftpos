.class public Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;
.super Ljava/lang/Object;
.source "QTESLAParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final HEURISTIC_I:Ljava/lang/String;

.field public static final HEURISTIC_III_SIZE:Ljava/lang/String;

.field public static final HEURISTIC_III_SPEED:Ljava/lang/String;

.field public static final PROVABLY_SECURE_I:Ljava/lang/String;

.field public static final PROVABLY_SECURE_III:Ljava/lang/String;


# instance fields
.field private securityCategory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->HEURISTIC_I:Ljava/lang/String;

    .line 2
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->HEURISTIC_III_SIZE:Ljava/lang/String;

    .line 3
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->HEURISTIC_III_SPEED:Ljava/lang/String;

    .line 4
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->PROVABLY_SECURE_I:Ljava/lang/String;

    .line 5
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->PROVABLY_SECURE_III:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->securityCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSecurityCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->securityCategory:Ljava/lang/String;

    return-object v0
.end method
