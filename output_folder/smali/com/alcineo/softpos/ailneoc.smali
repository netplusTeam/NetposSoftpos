.class public Lcom/alcineo/softpos/ailneoc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acileon:Ljava/lang/String;

.field private aoleinc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/ailneoc;->acileon:Ljava/lang/String;

    iput-object p2, p0, Lcom/alcineo/softpos/ailneoc;->aoleinc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native acileon()Ljava/lang/String;
.end method

.method public native aoleinc()Ljava/lang/String;
.end method

.method public native toString()Ljava/lang/String;
.end method
