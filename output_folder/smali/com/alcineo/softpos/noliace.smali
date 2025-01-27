.class public Lcom/alcineo/softpos/noliace;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0xea

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static synthetic $r8$lambda$ZulDUxtWbIDzVhi5--KjWJEEsjs(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/noliace;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/noliace;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/noliace;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/noliace$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/noliace$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/noliace;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method
