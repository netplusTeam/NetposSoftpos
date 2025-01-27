.class public Lcom/alcineo/administrative/commands/SetDateTime;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMAND:I = 0x44

.field public static final CONVERTER:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static synthetic $r8$lambda$Lw-0mRo2dF4_qbOLW1cuCeFdiZM(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/administrative/commands/SetDateTime;
    .locals 1

    new-instance v0, Lcom/alcineo/administrative/commands/SetDateTime;

    invoke-direct {v0, p0}, Lcom/alcineo/administrative/commands/SetDateTime;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/commands/SetDateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/administrative/commands/SetDateTime$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/commands/SetDateTime;->CONVERTER:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0x44

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Date;)V
    .locals 11

    const/16 v0, 0x44

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/alcineo/softpos/oelacni;->acileon(II)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, p1

    invoke-static {v4, v3}, Lcom/alcineo/softpos/oelacni;->acileon(II)[B

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6, v3}, Lcom/alcineo/softpos/oelacni;->acileon(II)[B

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v3}, Lcom/alcineo/softpos/oelacni;->acileon(II)[B

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v3}, Lcom/alcineo/softpos/oelacni;->acileon(II)[B

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v3}, Lcom/alcineo/softpos/oelacni;->acileon(II)[B

    move-result-object v0

    const/4 v9, 0x6

    new-array v9, v9, [[B

    const/4 v10, 0x0

    aput-object v1, v9, v10

    aput-object v4, v9, p1

    aput-object v6, v9, v3

    const/4 p1, 0x3

    aput-object v7, v9, p1

    aput-object v8, v9, v2

    aput-object v0, v9, v5

    invoke-static {v9}, Lcom/google/common/primitives/Bytes;->concat([[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Ljava/util/Date;)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            "Ljava/util/Date;",
            ")",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/SetDateTime;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method

.method public bridge native synthetic getExecutionResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native getExecutionResult()Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
