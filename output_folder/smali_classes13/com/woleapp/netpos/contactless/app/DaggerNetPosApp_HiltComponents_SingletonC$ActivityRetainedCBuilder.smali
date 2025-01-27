.class final Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;
.super Ljava/lang/Object;
.source "DaggerNetPosApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityRetainedC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityRetainedCBuilder"
.end annotation


# instance fields
.field private final singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singletonCImpl"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "x1"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;

    .line 200
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityRetainedC;
    .locals 3

    .line 209
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ActivityRetainedComponent;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;->build()Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityRetainedC;

    move-result-object v0

    return-object v0
.end method
