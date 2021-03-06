.class public Lcom/google/glass/widget/FillBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private fill:Landroid/view/View;

.field private listeners:Ljava/util/List;

.field private offset:F

.field private value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/FillBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/FillBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$color;->background_dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/FillBar;->setBackgroundColor(I)V

    .line 61
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/FillBar;->addView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method private onValueChanged()V
    .locals 4

    .prologue
    .line 152
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v2

    .line 153
    invoke-direct {p0, v2}, Lcom/google/glass/widget/FillBar;->updateScale(F)V

    .line 154
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/FillBar$Listener;

    invoke-interface {v0, v2}, Lcom/google/glass/widget/FillBar$Listener;->onFillValueChanged(F)V

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method private updateScale(F)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 161
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/widget/FillBar$Listener;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method clamp(FF)F
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public commitFillOffset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    iget v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 135
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    .line 136
    iput v2, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 137
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 139
    :cond_0
    return-void
.end method

.method public getFillOffset()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    return v0
.end method

.method public getOverScrollPixels()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->isAtMin()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    move v0, v1

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->isAtMax()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/glass/widget/FillBar;->offset:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 145
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    iget v1, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v2, p0, Lcom/google/glass/widget/FillBar;->offset:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 148
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 143
    goto :goto_0

    :cond_3
    move v1, v2

    .line 144
    goto :goto_1
.end method

.method public isAtMax()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtMin()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 85
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/FillBar;->updateScale(F)V

    .line 86
    return-void
.end method

.method public removeListener(Lcom/google/glass/widget/FillBar$Listener;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public setFillOffset(F)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 129
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 130
    return-void
.end method

.method public setFillValue(F)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 114
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 116
    iput p1, p0, Lcom/google/glass/widget/FillBar;->value:F

    .line 117
    iput v3, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 118
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 119
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method public setToMax()V
    .locals 1

    .prologue
    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 109
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 110
    return-void
.end method

.method public setToMin()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    .line 101
    iput v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 102
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 103
    return-void
.end method
