.class Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;
.super Ljava/lang/Object;
.source "AnnotationModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/model/AnnotationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityInfo"
.end annotation


# instance fields
.field priKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

.field secKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;->secKeys:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/persist/model/AnnotationModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/persist/model/AnnotationModel$1;

    .line 50
    invoke-direct {p0}, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;-><init>()V

    return-void
.end method
