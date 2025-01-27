.class public interface abstract annotation Lcom/sleepycat/persist/model/SecondaryKey;
.super Ljava/lang/Object;
.source "SecondaryKey.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sleepycat/persist/model/SecondaryKey;
        name = ""
        onRelatedEntityDelete = .enum Lcom/sleepycat/persist/model/DeleteAction;->ABORT:Lcom/sleepycat/persist/model/DeleteAction;
        relatedEntity = V
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract onRelatedEntityDelete()Lcom/sleepycat/persist/model/DeleteAction;
.end method

.method public abstract relate()Lcom/sleepycat/persist/model/Relationship;
.end method

.method public abstract relatedEntity()Ljava/lang/Class;
.end method
