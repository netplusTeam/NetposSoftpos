.class public Lcom/alcineo/administrative/commands/SendFile;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COMMAND:I = 0xee

.field public static final CONVERTER:Lcom/alcineo/softpos/oalecni;

.field public static final SCMD_DATA:I = 0x1

.field public static final SCMD_SET_CONF:I = 0x8d


# direct methods
.method public static synthetic $r8$lambda$mX-TonvrXJdlJKp-jpJNBwUQpQc(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/administrative/commands/SendFile;
    .locals 1

    new-instance v0, Lcom/alcineo/administrative/commands/SendFile;

    invoke-direct {v0, p0}, Lcom/alcineo/administrative/commands/SendFile;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/administrative/commands/SendFile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/administrative/commands/SendFile$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/administrative/commands/SendFile;->CONVERTER:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xee

    invoke-direct {p0, v0, p1, p2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xee

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native data([B)Lcom/alcineo/administrative/commands/SendFile;
.end method

.method public static native end()Lcom/alcineo/administrative/commands/SendFile;
.end method

.method public static native init(II)Lcom/alcineo/administrative/commands/SendFile;
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method
