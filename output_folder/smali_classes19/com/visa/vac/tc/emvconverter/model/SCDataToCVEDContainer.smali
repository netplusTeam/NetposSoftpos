.class public Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static getInstance:I


# instance fields
.field AlgorithmIndicator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->$$a:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->getInstance:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->setAlgorithmIndicator(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getAlgorithmIndicator()Ljava/lang/String;
    .locals 3

    .line 14
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->getInstance:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->AlgorithmIndicator:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x1a

    goto :goto_0

    :cond_1
    const/16 v1, 0x48

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public setAlgorithmIndicator(Ljava/lang/String;)V
    .locals 2

    .line 18
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->getInstance:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->AlgorithmIndicator:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method
