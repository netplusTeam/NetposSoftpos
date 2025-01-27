.class public Lnet/sf/scuba/data/TestCountry;
.super Lnet/sf/scuba/data/Country;
.source "TestCountry.java"


# static fields
.field public static final BP:Lnet/sf/scuba/data/TestCountry;

.field public static final DV:Lnet/sf/scuba/data/TestCountry;

.field public static final UT:Lnet/sf/scuba/data/TestCountry;

.field private static final VALUES:[Lnet/sf/scuba/data/TestCountry;

.field private static final serialVersionUID:J = 0x60d6887a66dd822cL


# instance fields
.field private alpha2Code:Ljava/lang/String;

.field private alpha3Code:Ljava/lang/String;

.field private code:I

.field private name:Ljava/lang/String;

.field private nationality:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 37
    new-instance v6, Lnet/sf/scuba/data/TestCountry;

    const/4 v1, -0x1

    const-string v2, "UT"

    const-string v3, "UTO"

    const-string v4, "Utopia"

    const-string v5, "Utopian"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/scuba/data/TestCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lnet/sf/scuba/data/TestCountry;->UT:Lnet/sf/scuba/data/TestCountry;

    .line 40
    new-instance v0, Lnet/sf/scuba/data/TestCountry;

    const/4 v8, -0x1

    const-string v9, "BP"

    const-string v10, "XBP"

    const-string v11, "BP"

    const-string v12, "BP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/sf/scuba/data/TestCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/scuba/data/TestCountry;->BP:Lnet/sf/scuba/data/TestCountry;

    .line 41
    new-instance v1, Lnet/sf/scuba/data/TestCountry;

    const/4 v14, -0x1

    const-string v15, "DV"

    const-string v16, "XDV"

    const-string v17, "DV"

    const-string v18, "DV"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lnet/sf/scuba/data/TestCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnet/sf/scuba/data/TestCountry;->DV:Lnet/sf/scuba/data/TestCountry;

    .line 50
    const/4 v2, 0x3

    new-array v2, v2, [Lnet/sf/scuba/data/TestCountry;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lnet/sf/scuba/data/TestCountry;->VALUES:[Lnet/sf/scuba/data/TestCountry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lnet/sf/scuba/data/Country;-><init>()V

    .line 53
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "alpha2Code"    # Ljava/lang/String;
    .param p3, "alpha3Code"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "nationality"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lnet/sf/scuba/data/Country;-><init>()V

    .line 56
    iput p1, p0, Lnet/sf/scuba/data/TestCountry;->code:I

    .line 57
    iput-object p2, p0, Lnet/sf/scuba/data/TestCountry;->alpha2Code:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lnet/sf/scuba/data/TestCountry;->alpha3Code:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lnet/sf/scuba/data/TestCountry;->name:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lnet/sf/scuba/data/TestCountry;->nationality:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static values()[Lnet/sf/scuba/data/TestCountry;
    .locals 1

    .line 64
    sget-object v0, Lnet/sf/scuba/data/TestCountry;->VALUES:[Lnet/sf/scuba/data/TestCountry;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    if-ne p1, p0, :cond_1

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    return v0

    .line 108
    :cond_2
    move-object v0, p1

    check-cast v0, Lnet/sf/scuba/data/TestCountry;

    .line 109
    .local v0, "otherCountry":Lnet/sf/scuba/data/TestCountry;
    iget-object v1, p0, Lnet/sf/scuba/data/TestCountry;->alpha3Code:Ljava/lang/String;

    iget-object v2, v0, Lnet/sf/scuba/data/TestCountry;->alpha3Code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lnet/sf/scuba/data/TestCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lnet/sf/scuba/data/TestCountry;->nationality:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 114
    iget-object v0, p0, Lnet/sf/scuba/data/TestCountry;->alpha3Code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toAlpha2Code()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lnet/sf/scuba/data/TestCountry;->alpha2Code:Ljava/lang/String;

    return-object v0
.end method

.method public toAlpha3Code()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lnet/sf/scuba/data/TestCountry;->alpha3Code:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/sf/scuba/data/TestCountry;->alpha2Code:Ljava/lang/String;

    return-object v0
.end method

.method public valueOf()I
    .locals 1

    .line 69
    iget v0, p0, Lnet/sf/scuba/data/TestCountry;->code:I

    return v0
.end method
