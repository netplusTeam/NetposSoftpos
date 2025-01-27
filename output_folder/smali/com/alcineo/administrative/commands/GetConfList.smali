.class public Lcom/alcineo/administrative/commands/GetConfList;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/administrative/commands/GetConfList$UploadableFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "Ljava/util/List<",
        "Lcom/alcineo/administrative/commands/GetConfList$UploadableFile;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COMMAND:I = 0xed

.field public static final CONVERTER:Lcom/alcineo/softpos/oalecni;

.field public static final SCMD_DATA:I = 0x1


# direct methods
.method public static synthetic $r8$lambda$fCazmdmwU5bhSIqv0IxpuR4Y8Uc(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/administrative/commands/GetConfList;
    .locals 1

    new-instance v0, Lcom/alcineo/administrative/commands/GetConfList;

    invoke-direct {v0, p0}, Lcom/alcineo/administrative/commands/GetConfList;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/commands/GetConfList$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/administrative/commands/GetConfList$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/commands/GetConfList;->CONVERTER:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    sget v0, Lcom/alcineo/softpos/alicneo;->SCMD_SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/16 v2, 0xed

    invoke-direct {p0, v2, v0, v1}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xed

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            ")",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/GetConfList;",
            "Ljava/util/List<",
            "Lcom/alcineo/administrative/commands/GetConfList$UploadableFile;",
            ">;>;"
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

.method public native getExecutionResult()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/administrative/commands/GetConfList$UploadableFile;",
            ">;"
        }
    .end annotation
.end method
