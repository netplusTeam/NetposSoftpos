.class Lcom/sleepycat/persist/impl/PersistCatalog$Data;
.super Ljava/lang/Object;
.source "PersistCatalog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/PersistCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x684ad97f555e548dL


# instance fields
.field formatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field

.field mutations:Lcom/sleepycat/persist/evolve/Mutations;

.field version:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/persist/impl/PersistCatalog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/persist/impl/PersistCatalog$1;

    .line 102
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/PersistCatalog$Data;-><init>()V

    return-void
.end method
