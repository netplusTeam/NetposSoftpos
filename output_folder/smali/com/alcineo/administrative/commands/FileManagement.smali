.class public Lcom/alcineo/administrative/commands/FileManagement;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "Ljava/util/List<",
        "Lcom/alcineo/administrative/FileId;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final COMMAND:I = 0xfe

.field public static final CONVERTER:Lcom/alcineo/softpos/oalecni;

.field public static final SCMD_ABORT:I = 0x5

.field public static final SCMD_END:I = 0x4

.field public static final SCMD_GET_FILES:I = 0x0

.field public static final SCMD_INIT:I = 0x1

.field public static final SCMD_READ:I = 0x2

.field public static final SCMD_WRITE:I = 0x3


# direct methods
.method public static synthetic $r8$lambda$ciP1cgn91GF4E2A78isQxrVoIDc(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/administrative/commands/FileManagement;
    .locals 1

    new-instance v0, Lcom/alcineo/administrative/commands/FileManagement;

    invoke-direct {v0, p0}, Lcom/alcineo/administrative/commands/FileManagement;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/commands/FileManagement$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/administrative/commands/FileManagement$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/commands/FileManagement;->CONVERTER:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xfe

    invoke-direct {p0, v0, p1, p2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xfe

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native abort()Lcom/alcineo/administrative/commands/FileManagement;
.end method

.method public static native end()Lcom/alcineo/administrative/commands/FileManagement;
.end method

.method public static native getFiles()Lcom/alcineo/administrative/commands/FileManagement;
.end method

.method public static native getGetFilesExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;)Lcom/alcineo/softpos/alineco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/lniaeoc;",
            "Lcom/alcineo/softpos/coalnie;",
            ")",
            "Lcom/alcineo/softpos/alineco<",
            "Lcom/alcineo/administrative/commands/FileManagement;",
            "Ljava/util/List<",
            "Lcom/alcineo/administrative/FileId;",
            ">;>;"
        }
    .end annotation
.end method

.method public static native initRead(Lcom/alcineo/administrative/FileId;)Lcom/alcineo/administrative/commands/FileManagement;
.end method

.method public static native initWrite(Lcom/alcineo/administrative/FileId;I)Lcom/alcineo/administrative/commands/FileManagement;
.end method

.method public static native read()Lcom/alcineo/administrative/commands/FileManagement;
.end method

.method public static native write([B)Lcom/alcineo/administrative/commands/FileManagement;
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
            "Lcom/alcineo/administrative/FileId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
