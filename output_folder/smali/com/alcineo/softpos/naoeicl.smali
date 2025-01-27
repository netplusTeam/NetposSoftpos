.class public abstract Lcom/alcineo/softpos/naoeicl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final acileon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/naoeicl;",
            ">;"
        }
    .end annotation
.end field

.field private static aoleinc:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader<",
            "Lcom/alcineo/softpos/naoeicl;",
            ">;"
        }
    .end annotation
.end field

.field private static final noaceli:Lorg/slf4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/naoeicl;->acileon:Ljava/util/List;

    const-class v0, Lcom/alcineo/softpos/naoeicl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native aoleinc()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/naoeicl;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public abstract acileon()Ljava/lang/String;
.end method

.method public abstract noaceli()Lcom/alcineo/softpos/noealic;
.end method

.method public native toString()Ljava/lang/String;
.end method
